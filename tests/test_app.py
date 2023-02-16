import app

def test_home():
    result = app.home()
    html = "<h3>Hello,Test App Version 3</h3>"
    assert html == result