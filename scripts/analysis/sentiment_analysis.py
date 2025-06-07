import pandas as pd
from transformers import pipeline
from scripts.utils.nlp_utils import preprocess_text

def run_sentiment_analysis(input_csv: str, output_csv: str):
    """
    Perform sentiment analysis on reviews and save results.
    """
    # Load data
    df = pd.read_csv(input_csv)
    print(f"Loaded {len(df)} reviews for sentiment analysis")

    # Initialize sentiment analysis pipeline
    classifier = pipeline('sentiment-analysis', model='distilbert-base-uncased-finetuned-sst-2-english')

    # Apply sentiment analysis
    def get_sentiment(review: str):
        try:
            result = classifier(review, truncation=True, max_length=512)[0]
            label = result['label']
            score = result['score']
            # Neutral if confidence is low
            if score < 0.6:
                return 'NEUTRAL', 0.5
            return label, score
        except Exception as e:
            print(f"Error processing review: {e}")
            return 'NEUTRAL', 0.0

    df[['sentiment_label', 'sentiment_score']] = df['review'].apply(
        lambda x: pd.Series(get_sentiment(x))
    )

    # Save results
    df.to_csv(output_csv, index=False)
    print(f"Saved sentiment results to {output_csv}")

    # Print summary
    print("\nSentiment distribution by bank:")
    print(df.groupby(['bank', 'sentiment_label']).size())

if __name__ == '__main__':
    input_csv = 'data/reviews_raw.csv'
    output_csv = 'data/processed/reviews_with_sentiment.csv'
    run_sentiment_analysis(input_csv, output_csv)