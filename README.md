# Bank Reviews Analysis
This repository contains code for analyzing customer reviews of mobile banking apps for three Ethiopian banks: Commercial Bank of Ethiopia (CBE), Bank of Abyssinia (BOA), and Dashen Bank.

## Task 1: Data Collection and Preprocessing
- Scrape 400+ reviews per bank from the Google Play Store.
- Preprocess data (remove duplicates, normalize dates, etc.).
- Save as a clean CSV.
- **Methodology**:
  - Used `google-play-scraper` to collect reviews for CBE (`com.moss.ethioapp`), BOA (`com.finaclemobile.boa`), and Dashen (`com.ofss.fcdb.mobile.android.phone.dashen`).
  - Targeted 400+ reviews per bank.
  - Preprocessed data by removing duplicates, handling missing values, and normalizing dates to YYYY-MM-DD.
  - Saved data to `data/reviews_raw.csv` with columns: review, rating, date, bank, source.
- **Scripts**:
  - `scripts/scrape_reviews.py`: Scrapes and preprocesses reviews.

## Task 2: Sentiment and Thematic Analysis
- **Methodology**:
  - Perform sentiment analysis using `distilbert-base-uncased-finetuned-sst-2-english`.
  - Extract keywords using spaCy and TF-IDF, then cluster into 3–5 themes per bank.
  - Save results to `data/processed/reviews_analyzed.csv`.
- **Scripts**:
  - `scripts/analysis/sentiment_analysis.py`: Computes sentiment scores.
  - `scripts/analysis/thematic_analysis.py`: Extracts keywords and clusters themes.
  - `scripts/utils/nlp_utils.py`: Utility functions for NLP preprocessing.