'''
[문제 4: 출판 연도별 책의 수 계산]
문제 설명 :
데이터베이스에 저장된 책 데이터를 이용하여 각 출판 연도별로 출판된 책의 수를 계산하고자 합니다. 이 데이터는 시간에 따른 출판 트렌드를 분석하는 데 사용될 수 있습니다.
쿼리 작성 목표 :
각 출판 연도별로 출판된 책의 수를 계산하고, 출판된 책의 수가 많은 순서대로 정렬하는 MongoDB 쿼리를 함수로 만들어 문제를 해결해 봅니다.
'''
def count_year_books(db):
    collection_books = db.books
    years = [
        {'$group': {'_id': '$year', 'count': {'$sum': 1}}},
        {'$sort': {'$count': -1}}
    ]
    books_years = collection_books.aggregate(years)
    for books_year in books_years:
        print(books_year)

count_year_books(db)