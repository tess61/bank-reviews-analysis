import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '../..')))

import pandas as pd
import psycopg2
from datetime import datetime

def connect_to_postgres():
    """
    Establish connection to PostgreSQL.
    """
    try:
        connection = psycopg2.connect(
            user="postgres",
            password="Postgres123",
            host="localhost",
            port="5432",
            database="bank_reviews"
        )
        print("Connected to PostgreSQL database")
        return connection
    except psycopg2.Error as e:
        print(f"Error connecting to PostgreSQL: {e}")
        sys.exit(1)

def insert_reviews(connection, csv_path: str):
    """
    Insert review data from CSV into Reviews table.
    """
    # Load CSV
    df = pd.read_csv(csv_path)
    print(f"Loaded {len(df)} reviews for insertion")

    # Get bank IDs
    cursor = connection.cursor()
    cursor.execute("SELECT bank_name, bank_id FROM Banks")
    bank_ids = {name: id for name, id in cursor.fetchall()}

    # Prepare insert statement
    insert_sql = """
    INSERT INTO Reviews (bank_id, review_text, rating, review_date, source, sentiment_label, sentiment_score, themes)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
    """

    # Insert data
    inserted = 0
    for _, row in df.iterrows():
        try:
            bank_id = bank_ids.get(row['bank'])
            if not bank_id:
                print(f"Skipping review: Bank {row['bank']} not found")
                continue
            cursor.execute(insert_sql, (
                bank_id,
                row['review'],
                row['rating'],
                row['date'],
                row['source'],
                row['sentiment_label'],
                row['sentiment_score'],
                row['themes']
            ))
            inserted += 1
        except psycopg2.Error as e:
            print(f"Error inserting review: {e}")
            continue

    connection.commit()
    print(f"Inserted {inserted} reviews into Reviews table")
    cursor.close()

if __name__ == '__main__':
    csv_path = 'data/processed/reviews_analyzed.csv'
    connection = connect_to_postgres()
    try:
        insert_reviews(connection, csv_path)
    finally:
        connection.close()
        print("Database connection closed")