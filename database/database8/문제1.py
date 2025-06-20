'''
**[문제 1: 특정 장르의 책 찾기]**

- **문제 설명**:
데이터베이스에 새로운 필드로 **`genre`**를 책 데이터에 추가하였습니다. 사용자는 "fantasy" 장르의 모든 책을 찾고 싶어합니다.
- **쿼리 작성 목표**:
"fantasy" 장르에 해당하는 모든 책의 제목과 저자를 찾는 MongoDB 쿼리를 함수로 만들어 문제를 해결해 봅니다.
'''
def find_genre_book(db, genre):
    collection_books = db.books
    query = {'genre': genre}
    projection = {'_id': 0, 'title': 1, 'author': 1, 'year': 0}
    books = collection_books.find(query, projection)
    for book in books:
        print(book)
        
find_genre_book(db, 'fantasy')