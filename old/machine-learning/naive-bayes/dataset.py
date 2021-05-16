import pandas as pd
import numpy as np
import nltk
from nltk.corpus import words


def email_dataset(emails_csv_path):
    vocabulary = {}
    data = pd.read_csv(emails_csv_path)
    nltk.download('words')
    set_words = set(words.words())

    def build_vocabulary(email):
        idx = len(vocabulary)

        for word in email:
            if word.lower() not in vocabulary and word.lower() in set_words:
                vocabulary[word] = idx
                idx += 1

    for i in range(data.shape[0]):
        email = data.iloc[i, 0].split()
        print(f'Current email is {i}/{data.shape[0]} and the \
            lenght of the vocabulary is {len(vocabulary)}')

        build_vocabulary(email)

    X = np.zeros((data.shape[0], len(vocabulary)))
    y = np.zeros((data.shape[0]))

    for i in range(data.shape[0]):
        email = data.iloc[i, 0].split()
        for word in email:
            if word.lower() in vocabulary:
                X[i, vocabulary[word]] += 1
                y[i] = data.iloc[i, 1]

    return X, y
