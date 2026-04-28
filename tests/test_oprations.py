from src.math_oprations import add,sub

def test_add():
    assert add(2,3) == 5
    assert add(-1,1) == 0

def terst_sun():
    assert sub(5,2) == 3
    assert sub(5,3) == 2
    assert sub(5,4) == 1
    assert sub(5,5) == 0