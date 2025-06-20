'''
**[문제 2: 감독별 평균 영화 평점 계산]**

- **문제 설명**:
각 영화 감독별로 그들의 영화 평점의 평균을 계산하고 싶습니다. 이를 통해 어떤 감독이 가장 높은 평균 평점을 가지고 있는지 알아볼 수 있습니다.
- **쿼리 작성 목표**:
모든 영화 감독의 영화 평점 평균을 계산하고, 평균 평점이 높은 순으로 정렬하는 MongoDB 쿼리를 함수로 만들어 문제를 해결해 봅니다.
'''
def director_avg_rating(db):
    collection_movies = db.movies
    directors_avg = [
        { '$group': {'_id': '$director', 'avg_rating': {'$avg': '$rating'}}},
        {'$sort': {'avg_rating': -1}}
    ]
    rating_lists = collection_movies.aggregate(directors_avg)
    for rating_list in rating_lists:
        print(rating_list)
        
director_avg_rating(db)