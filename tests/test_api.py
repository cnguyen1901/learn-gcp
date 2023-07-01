import pytest
from app import app
import json


@pytest.fixture
def client():
    """Create a test client for the Flask application."""
    with app.test_client() as client:
        yield client


def test_get_request(client):
    """Test making a GET request to a Flask route."""
    response = client.get("/users")
    assert response.status_code == 200


# def test_post_request(client):
#     """Test making a POST request to a Flask route."""
#     data = {"name": "John Doe"}
#     response = client.post("/users", data=data)
#     assert response.status_code == 200
# assert b"Thank you for submitting!" in response.data
