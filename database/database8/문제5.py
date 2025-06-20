'''
[문제 5: 특정 사용자의 행동 유형 업데이트]
문제 설명:
특정 사용자의 행동 로그 중, 특정 날짜 이전의 "view" 행동을 "seen"으로 변경하고 싶습니다. 예를 들어, 사용자 ID가 1인 사용자의 2023년 4월 10일 이전의 모든 "view" 행동을 "seen"으로 변경하는 작업입니다.
쿼리 작성 목표:
사용자 ID가 1인 사용자의 2023년 4월 10일 이전의 "view" 행동을 "seen"으로 변경하는 MongoDB 업데이트 쿼리를 함수로 만들어 문제를 해결해 봅니다.
'''
from datetime import datetime
def update_actions_date(db, user_id, previous_action, update_action, date):
    collection_actions = db.user_actions
    query = {'user_id': user_id, 'action': previous_action, 'timestamp': {'$lt': date}}
    update = {
        '$set': {'action': update_action}
    }
    update_result = collection_actions.update_many(query, update)
    
update_actions_date(db, 1, 'view', 'seen', datetime(2023, 4, 10))