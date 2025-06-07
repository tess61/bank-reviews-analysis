import spacy
from sklearn.feature_extraction.text import TfidfVectorizer
from typing import List, Tuple

# Load spaCy model
nlp = spacy.load('en_core_web_sm')

def preprocess_text(text: str) -> str:
    """
    Preprocess text: lowercase, remove punctuation, lemmatize, remove stop words.
    """
    doc = nlp(text.lower())
    tokens = [token.lemma_ for token in doc if not token.is_stop and not token.is_punct]
    return ' '.join(tokens)

def extract_keywords(texts: List[str], top_n: int = 10) -> List[Tuple[str, float]]:
    """
    Extract top keywords using TF-IDF.
    """
    vectorizer = TfidfVectorizer(max_features=top_n, ngram_range=(1, 2))
    tfidf_matrix = vectorizer.fit_transform(texts)
    feature_names = vectorizer.get_feature_names_out()
    scores = tfidf_matrix.max(axis=0).toarray()[0]
    return sorted(zip(feature_names, scores), key=lambda x: x[1], reverse=True)