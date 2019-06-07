require 'minitest/autorun'
require_relative 'fizzbuzz.rb'

class FizzBuzzTest < Minitest::Test
  def test_non_fizzbuzz_number_prints
    assert_equal "1", fizzbuzz_single(1)
  end

  def test_multiples_of_three_are_fizz
    assert_equal "fizz", fizzbuzz_single(3)
    assert_equal "fizz", fizzbuzz_single(9)
  end

  def test_multiples_of_five_are_buzz
    assert_equal "buzz", fizzbuzz_single(5)
    assert_equal "buzz", fizzbuzz_single(20)
  end

  def test_multiples_of_fifteen_are_fizzbuzz
    assert_equal "fizzbuzz", fizzbuzz_single(15)
    assert_equal "fizzbuzz", fizzbuzz_single(30)
  end

  def test_iterable
    assert_equal ["1", "fizz", "buzz", "fizzbuzz"], fizzbuzz_list([1,3,5,15])
  end

end