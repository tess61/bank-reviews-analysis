import pandas as pd
from scripts.utils.nlp_utils import preprocess_text, extract_keywords

def run_thematic_analysis(input_csv: str, output_csv: str):
    """
    Extract keywords and cluster into themes for each bank.
    """
    # Load data
    df = pd.read_csv(input_csv)
    print(f"Loaded {len(df)} reviews for thematic analysis")

    # Preprocess reviews
    df['processed_review'] = df['review'].apply(preprocess_text)

    # Define themes based on common banking app issues
    theme_keywords = {
        'Account Access Issues': ['login', 'authentication', 'password', 'access', 'fingerprint'],
        'Transaction Performance': ['transfer', 'slow', 'loading', 'transaction', 'payment'],
        'User Interface': ['ui', 'interface', 'design', 'navigation', 'user friendly'],
        'Reliability': ['crash', 'bug', 'error', 'freeze', 'crash'],
        'Customer Support': ['support', 'help', 'response', 'customer service']
    }

    # Extract keywords per bank
    themes_per_bank = {}
    for bank in df['bank'].unique():
        bank_reviews = df[df['bank'] == bank]['processed_review'].tolist()
        keywords = extract_keywords(bank_reviews, top_n=20)
        print(f"\nTop keywords for {bank}:")
        print(keywords)

        # Assign themes based on keywords
        bank_themes = []
        for theme, keywords_list in theme_keywords.items():
            for keyword, score in keywords:
                if any(kw in keyword for kw in keywords_list):
                    bank_themes.append((theme, keyword, score))
        themes_per_bank[bank] = bank_themes

    # Assign themes to reviews
    def assign_themes(review: str):
        themes = []
        for theme, keywords_list in theme_keywords.items():
            if any(kw in review.lower() for kw in keywords_list):
                themes.append(theme)
        return ';'.join(themes) if themes else 'Other'

    df['themes'] = df['review'].apply(assign_themes)

    # Save results
    df.to_csv(output_csv, index=False)
    print(f"Saved thematic analysis results to {output_csv}")

    # Print themes per bank
    for bank, themes in themes_per_bank.items():
        print(f"\nThemes for {bank}:")
        for theme, keyword, score in set(themes):
            print(f"- {theme}: {keyword} (score: {score:.3f})")

if __name__ == '__main__':
    input_csv = 'data/processed/reviews_with_sentiment.csv'
    output_csv = 'data/processed/reviews_analyzed.csv'
    run_thematic_analysis(input_csv, output_csv)