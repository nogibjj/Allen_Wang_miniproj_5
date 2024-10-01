from main import reverse_string


def test_reverse_string():
    """testing reverse_string function"""
    assert reverse_string("ab") == "ba"
    assert reverse_string("abC") == "Cba"
    # assert reverse_string("abC") == "a"


if __name__ == "__main__":
    test_reverse_string()
