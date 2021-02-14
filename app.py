from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    """prints a simple message!"""
    return 'My First Capstone Project after rolling update!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
