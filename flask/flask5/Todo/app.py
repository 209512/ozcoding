from flask import Flask, render_template
from flask_jwt_extended import JWTManager
from flask_smorest import Api

from db import db
from flask_migrate import Migrate

app = Flask(__name__)

app.config["SQLALCHEMY_DATABASE_URI"] = "sqlite:///app.db"
app.config["JWT_SECRET_KEY"] = "super-secret-key"
app.config['APP_TITLE'] = 'Todo API'
app.config['API_VERSION'] = 'v1'
app.config['OPENAPI_VERSION'] = '3.0.2'


db.init_app(app)
migrate = Migrate(app, db)

jwt = JWTManager(app)
api = Api(app)

if __name__ == "__main__":
    app.run(debug=True)