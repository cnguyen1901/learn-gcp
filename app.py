from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://mysql:mysql@db/mysql"
db = SQLAlchemy(app)
migrate = Migrate(app, db)


class Customer(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50))

    def __init__(self, name):
        self.name = name


@app.route("/users", methods=["GET"])
def get_users():
    customers = Customer.query.all()
    print(f"customers: {customers}")
    result = []
    for customer in customers:
        result.append({"id": customer.id, "name": customer.name})
    return jsonify(result)


@app.route("/users", methods=["POST"])
def create_user():
    name = request.json["name"]
    print(name)
    user = Customer(name)
    db.session.add(user)
    db.session.commit()
    return jsonify({"message": "User created successfully"})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
