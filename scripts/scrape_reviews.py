from google_play_scraper import reviews_all, Sort
import pandas as pd
from datetime import datetime
import os

# Define app IDs for the three banks
apps = {
    'CBE': 'com.combanketh.mobilebanking',
    'BOA': 'com.boa.boaMobileBanking',
    'Dashen': 'com.dashen.dashensuperapp'
}

# Create a directory for data
os.makedirs('data', exist_ok=True)

# Function to scrape reviews
def scrape_bank_reviews(app_id, bank_name, min_reviews=400):
    print(f"Scraping reviews for {bank_name}...")
    reviews = reviews_all(
        app_id,
        lang='en',  # Reviews in English
        country='us',  # Adjust if needed
        sort=Sort.NEWEST,  # Sort by newest reviews
        count=min_reviews  # Target at least 400 reviews
    )
    print(f"Collected {len(reviews)} reviews for {bank_name}")
    return [{
        'review': r['content'],
        'rating': r['score'],
        'date': r['at'].strftime('%Y-%m-%d'),
        'bank': bank_name,
        'source': 'Google Play'
    } for r in reviews]

# Scrape reviews for all banks
all_reviews = []
for bank, app_id in apps.items():
    reviews = scrape_bank_reviews(app_id, bank)
    all_reviews.extend(reviews)

# Convert to DataFrame
df = pd.DataFrame(all_reviews)

# Preprocess data
# Remove duplicates based on review text
df = df.drop_duplicates(subset=['review'], keep='first')

# Handle missing data
df = df.dropna(subset=['review', 'rating', 'date'])

# Ensure date is in YYYY-MM-DD format
df['date'] = pd.to_datetime(df['date']).dt.strftime('%Y-%m-%d')

# Save to CSV
output_path = 'data/reviews_raw.csv'
df.to_csv(output_path, index=False)
print(f"Saved {len(df)} reviews to {output_path}")

# Print summary
print("\nSummary by bank:")
print(df.groupby('bank').size())