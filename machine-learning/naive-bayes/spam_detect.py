from naive_bayes import NaiveBayes
from dataset import email_dataset

if __name__ == '__main__':
    X, y = email_dataset('data/emails.csv')

    print(X.shape)
    print(y.shape)

    NB = NaiveBayes(X, y)
    NB.fit(X, y)
    y_pred = NB.predict(X)

    print(f'Accuracy {sum(y_pred == y)/X.shape[0]}%')
    print(f'Spam emails {sum(y)/y.shape[0]}%')
