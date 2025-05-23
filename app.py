
from flask import Flask, render_template
from flask_mysqldb import MySQL
import MySQLdb.cursors

app = Flask(__name__)
app.config.from_object('config')

mysql = MySQL(app)

@app.route('/')
def index():
    return render_template('base.html')

@app.route('/eleves')
def eleves():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM eleves")
    data = cursor.fetchall()
    return render_template('eleves.html', eleves=data)

@app.route('/classes')
def classes():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM classes")
    data = cursor.fetchall()
    return render_template('classes.html', classes=data)

@app.route('/enseignants')
def enseignants():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM enseignants")
    data = cursor.fetchall()
    return render_template('enseignants.html', enseignants=data)

@app.route('/cours')
def cours():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM cours")
    data = cursor.fetchall()
    return render_template('cours.html', cours=data)

if __name__ == '__main__':
    app.run(debug=True)
