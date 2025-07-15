from flask import request, jsonify
from flask.views import MethodView
from flask_smorest import Blueprint
from marshmallow import Schema, fields
from db import db
from models import User

class UserSchema(Schema):
    id = fields.Int(dump_only=True)
    name = fields.Str(required=True)
    email = fields.Str(required=True)

user_blp = Blueprint('Users', 'users', description='Operations on users', url_prefix='/users')

@user_blp.route('/')
class UserList(MethodView):
    @user_blp.response(200, UserSchema(many=True))
    def get(self):
        users = User.query.all()
        user_data = [
            {'id': user.id, 'name': user.name, 'email': user.email} 
            for user in users]
        return jsonify(user_data)

    @user_blp.arguments(UserSchema)
    @user_blp.response(201, UserSchema)
    def post(self):
        print('request??')
        user_data = request.json
        new_user = User(name=user_data['name'], email=user_data['email'])
        db.session.add(new_user)
        db.session.commit()
        return jsonify({'message': 'User created'}), 201

@user_blp.route('/<int:user_id>')
class Users(MethodView):
    @user_blp.response(200, UserSchema)
    def get(self, user_id):
        user = User.query.get_or_404(user_id)
        return {'name': user.name, 'email': user.email}

    @user_blp.arguments(UserSchema)
    @user_blp.response(200, UserSchema)
    def put(self, user_id):
        user = User.query.get_or_404(user_id)
        user_data = request.json

        user.name = user_data['name']
        user.email = user_data['email']

        db.session.commit()
        return {'message': 'User updated'}

    @user_blp.response(204)
    def delete(self, user_id):
        user = User.query.get_or_404(user_id)
        db.session.delete(user)
        db.session.commit()
        return {'message': 'User deleted'}