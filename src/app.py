from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
<<<<<<< HEAD
    return 'hello world'  
=======
    return 'hi vipin'  
>>>>>>> ac2444d (fix hi vipin)

if __name__ == '__main__':
    app.run(host = "0.0.0.0", port = 5000 )
