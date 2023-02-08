import app

def test_home():
    result = app.home()
    html = "<h3>Hello, My name is Peter Huynh</h3>"
    assert html == result