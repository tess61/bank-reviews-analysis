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