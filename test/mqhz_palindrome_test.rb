require "test_helper"

class MqhzPalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::MqhzPalindrome::VERSION
  end

  def test_it_does_something_useful
    refute "apple".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCaR".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

end
