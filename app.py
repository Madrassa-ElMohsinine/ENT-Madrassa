from flask import Flask, render_template, g
import sqlite3

app = Flask(__name__)
DATABASE = 'madrassa.db'

def get_db():
    if 'db' not in g:
        g.db = sqlite3.connect(DATABASE)
        g.db.row_factory = sqlite3.Row
    return g.db

@app.teardown_appcontext
def close_db(error):
    db = g.pop('db', None)
    if db is not None:
        db.close()

@app.route('/')
def index():
    return render_template('base.html')

@app.route('/eleves')
def eleves():
    cursor = get_db().execute("SELECT * FROM eleves")
    data = cursor.fetchall()
    return render_template('eleves.html', eleves=data)

@app.route('/eleve/<int:eleve_id>')
def fiche_eleve(eleve_id):
    db = get_db()
    
    # Récupérer l'élève
    eleve = db.execute("SELECT * FROM eleves WHERE id = ?", (eleve_id,)).fetchone()
    if not eleve:
        return "Élève introuvable", 404

    # Récupérer la classe
    classe = db.execute("SELECT * FROM classes WHERE id = ?", (eleve["classe_id"],)).fetchone()

    # Récupérer les parents
    parents = db.execute("SELECT * FROM parents WHERE eleve_id = ?", (eleve_id,)).fetchall()

    return render_template("fiche_eleve.html", eleve=eleve, classe=classe, parents=parents)


@app.route('/classes')
def classes():
    cursor = get_db().execute("SELECT * FROM classes")
    data = cursor.fetchall()
    return render_template('classes.html', classes=data)

@app.route('/enseignants')
def enseignants():
    cursor = get_db().execute("SELECT * FROM enseignants")
    data = cursor.fetchall()
    return render_template('enseignants.html', enseignants=data)

@app.route('/cours')
def cours():
    cursor = get_db().execute("SELECT * FROM cours")
    data = cursor.fetchall()
    return render_template('cours.html', cours=data)

if __name__ == '__main__':
    app.run(debug=True)

