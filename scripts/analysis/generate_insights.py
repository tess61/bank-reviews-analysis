import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../..')))

import pandas as pd
import psycopg2
import matplotlib.pyplot as plt
import seaborn as sns
from wordcloud import WordCloud
from datetime import datetime
import numpy as np

def connect_to_postgres():
    """Establish connection to PostgreSQL."""
    try:
        connection = psycopg2.connect(
            user="postgres",
            password="Postgres123",
            host="localhost",
            port="5432",
            database="bank_reviews"
        )
        return connection
    except psycopg2.Error as e:
        print(f"Error connecting to PostgreSQL: {e}")
        sys.exit(1)

def fetch_data(connection):
    """Fetch data from PostgreSQL."""
    query = """
    SELECT b.bank_name, r.review_text, r.rating, r.review_date, r.sentiment_label, 
           r.sentiment_score, r.themes
    FROM Reviews r
    JOIN Banks b ON r.bank_id = b.bank_id
    """
    df = pd.read_sql(query, connection)
    print(f"Fetched {len(df)} reviews from database")
    return df

def generate_visualizations(df):
    """Generate 3-5 visualizations and save to outputs/plots/."""
    os.makedirs('outputs/plots', exist_ok=True)

    # 1. Rating Distribution by Bank
    plt.figure(figsize=(10, 6))
    sns.countplot(data=df, x='bank_name', hue='rating')
    plt.title('Rating Distribution by Bank')
    plt.xlabel('Bank')
    plt.ylabel('Number of Reviews')
    plt.legend(title='Rating')
    plt.savefig('outputs/plots/rating_distribution.png')
    plt.close()

    # 2. Sentiment Distribution by Bank
    plt.figure(figsize=(10, 6))
    sns.countplot(data=df, x='bank_name', hue='sentiment_label')
    plt.title('Sentiment Distribution by Bank')
    plt.xlabel('Bank')
    plt.ylabel('Number of Reviews')
    plt.legend(title='Sentiment')
    plt.savefig('outputs/plots/sentiment_distribution.png')
    plt.close()

    # 3. Sentiment Score vs. Rating
    plt.figure(figsize=(10, 6))
    sns.scatterplot(data=df, x='rating', y='sentiment_score', hue='bank_name', alpha=0.6)
    plt.title('Sentiment Score vs. Rating by Bank')
    plt.xlabel('Rating')
    plt.ylabel('Sentiment Score')
    plt.savefig('outputs/plots/sentiment_vs_rating.png')
    plt.close()

    # 4. Keyword Cloud per Bank
    for bank in df['bank_name'].unique():
        bank_reviews = df[df['bank_name'] == bank]['review_text'].str.cat(sep=' ')
        wordcloud = WordCloud(width=800, height=400, background_color='white').generate(bank_reviews)
        plt.figure(figsize=(10, 5))
        plt.imshow(wordcloud, interpolation='bilinear')
        plt.axis('off')
        plt.title(f'Keyword Cloud for {bank}')
        plt.savefig(f'outputs/plots/keyword_cloud_{bank}.png')
        plt.close()

def analyze_insights(df):
    """Analyze drivers and pain points per bank."""
    insights = {}
    for bank in df['bank_name'].unique():
        bank_df = df[df['bank_name'] == bank]
        
        # Drivers: High ratings (4-5) and positive sentiment
        drivers = bank_df[bank_df['rating'] >= 4][['review_text', 'themes']].head(5)
        driver_themes = drivers['themes'].value_counts().head(2)
        
        # Pain Points: Low ratings (1-2) and negative sentiment
        pain_points = bank_df[bank_df['rating'] <= 2][['review_text', 'themes']].head(5)
        pain_themes = pain_points['themes'].value_counts().head(2)
        
        insights[bank] = {
            'drivers': driver_themes.to_dict(),
            'pain_points': pain_themes.to_dict(),
            'driver_examples': drivers['review_text'].tolist(),
            'pain_examples': pain_points['review_text'].tolist()
        }
    
    # Print insights
    for bank, data in insights.items():
        print(f"\nInsights for {bank}:")
        print("Drivers (Top Themes for High Ratings):")
        for theme, count in data['drivers'].items():
            print(f"- {theme}: {count} reviews")
        print("Driver Examples:")
        for ex in data['driver_examples']:
            print(f"  - {ex[:100]}...")
        print("Pain Points (Top Themes for Low Ratings):")
        for theme, count in data['pain_points'].items():
            print(f"- {theme}: {count} reviews")
        print("Pain Point Examples:")
        for ex in data['pain_examples']:
            print(f"  - {ex[:100]}...")

    return insights

if __name__ == '__main__':
    connection = connect_to_postgres()
    try:
        df = fetch_data(connection)
        generate_visualizations(df)
        insights = analyze_insights(df)
    finally:
        connection.close()
        print("Database connection closed")