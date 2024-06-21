import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import linear_kernel

# # Load your movie data (replace with your actual path)
df = pd.read_csv(r"E:\Likhon\East West University\EWU Spring 2024\CSE479\Project\CSE479 Project - admin_add_item_movies.csv")

# # Combine relevant features into a single 'content' column
df['content'] = df['director'] + ' ' + df['genre'] + ' ' + df['description']

# # Text Vectorization using TF-IDF
tfidf = TfidfVectorizer(stop_words='english')
tfidf_matrix = tfidf.fit_transform(df['content'])

# # Calculate cosine similarity
cosine_sim = linear_kernel(tfidf_matrix, tfidf_matrix)

# # Function to get recommendations
def get_recommendations(title, cosine_sim=cosine_sim, df=df):
    idx = df[df['title'] == title].index[0]
    sim_scores = list(enumerate(cosine_sim[idx]))
    sim_scores = sorted(sim_scores, key=lambda x: x[1], reverse=True)
    sim_scores = sim_scores[1:6]  # Get top 5 similar movies
    movie_indices = [i[0] for i in sim_scores]
    return df['title'].iloc[movie_indices].tolist()



# for x in df['title']:
#     recom = get_recommendations(x)
#     print(recom)


recommendations_df = pd.DataFrame(columns=['title', 'recommendation1', 'recommendation2', 'recommendation3', 'recommendation4', 'recommendation5'])

for x in df['title']:
    recom = get_recommendations(x)
    # Append the title and recommendations to the new dataframe
    recommendations_df = recommendations_df._append({'title': x, 'recommendation1': recom[0], 'recommendation2': recom[1], 'recommendation3': recom[2], 'recommendation4': recom[3], 'recommendation5': recom[4]}, ignore_index=True)

recommendations_df.to_csv('recommendations.csv', index=False)
print(recommendations_df)