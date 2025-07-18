from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from my Flask!"

@app.route('/health')
def health():
    return {'status': 'ok'}, 200

@app.route('/login')
def login():
    return "Login page placeholder"

if __name__ == '__main__':
    app.run()