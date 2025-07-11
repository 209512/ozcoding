from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    users = [
    {"username": "traveler", "name": "Alex"},
    {"username": "photographer", "name": "Sam"},
    {"username": "gourmet", "name": "Chris"}
    ]
    sorted_users = sorted(users, key=lambda x: x['name'])
    
    return render_template('index.html', users=sorted_users)

if __name__ == '__main__':
    app.run(debug=True)