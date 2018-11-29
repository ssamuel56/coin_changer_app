require_relative 'coin_changer.rb'
require 'minitest/autorun'

class Test_for_coin_changer < Minitest::Test
  def test_1for1
    assert_equal(1, 1)
  end
  def test_for_one_quarter
    assert_equal({:Quarter=>1}, coinify(25))
  end
  def test_for_two_quarters
    assert_equal({:Quarters=>2}, coinify(50))
  end
  def test_for_a_dime
    assert_equal({:Dime=>1}, coinify(10))
  end
  def test_for_quarter_and_dime
    assert_equal({:Quarter=>1, :Dime=>1}, coinify(35))
  end
  def test_for_a_nickel
    assert_equal({:Nickel=>1}, coinify(5))
  end
  def test_for_a_quarter_dime_and_nickel
    assert_equal({:Quarter=>1, :Dime=>1, :Nickel=>1}, coinify(40))
  end
  def test_for_a_penny
    assert_equal({:Penny=>1}, coinify(1))
  end
  def test_for_2_quarters_a_dime_a_nickel_and_4_pennies
    assert_equal({:Quarters=>2, :Dime=>1, :Nickel=>1, :Pennies=>4}, coinify(69))
  end
  def test_for_95
    assert_equal({:Quarters=>3, :Dimes=>2}, coinify(95))
  end
  def test_for_632
    assert_equal({:Quarters=>25, :Nickel=>1, :Pennies=>2}, coinify(632))
  end
  def test_for_3
    assert_equal({:Pennies=>3}, coinify(3))
  end
  def test_for_99
    assert_equal({:Quarters=>3, :Dimes=>2, :Pennies=>4}, coinify(99))
  end
  def test_for_4969879533
    assert_equal({:Quarters=>198795181, :Nickel=>1, :Pennies=>3}, coinify(4969879533))
  end
  def test_for_loop_one_quarter
    assert_equal({:Quarter=>1}, coinify_loop(25))
  end
  def test_for_loop_two_quarters
    assert_equal({:Quarters=>2}, coinify_loop(50))
  end
  def test_for_loop_a_dime
    assert_equal({:Dime=>1}, coinify_loop(10))
  end
  def test_for_loop_a_quarter_and_dime
    assert_equal({:Quarter=>1, :Dime=>1}, coinify_loop(35))
  end
  def test_for_loop_a_nickel
    assert_equal({:Nickel=>1}, coinify_loop(5))
  end
  def test_for_loop_a_quarter_dime_and_nickel
    assert_equal({:Quarter=>1, :Dime=>1, :Nickel=>1}, coinify_loop(40))
  end
  def test_for_loop_two_dimes
    assert_equal({:Dimes=>2}, coinify_loop(20))
  end
  def test_for_loop_two_dimes_and_quarter
    assert_equal({:Quarters=>3, :Dimes=>2}, coinify_loop(95))
  end
  def test_for_loop_a_penny
    assert_equal({:Penny=>1}, coinify_loop(1))
  end
  def test_for_loop_2_quarters_a_dime_a_nickel_and_4_pennies
    assert_equal({:Quarters=>2, :Dime=>1, :Nickel=>1, :Pennies=>4}, coinify_loop(69))
  end
  def test_for_loop_632
    assert_equal({:Quarters=>25, :Nickel=>1, :Pennies=>2}, coinify_loop(632))
  end
  def test_for_loop_4969879533
    assert_equal({:Quarters=>198795181, :Nickel=>1, :Pennies=>3}, coinify_loop(4969879533))
  end
  def test_for_else_not_correct_input
    assert_equal("Please use correct input", coinify("String"))
  end
  def test_for_loop_else_not_correct_input
    assert_equal("Please use correct input", coinify_loop("String"))
  end
  def test_for_float
    assert_equal("Please use correct input", coinify(1.2))
  end
  def test_for_negative_number
    assert_equal("Please use correct input", coinify(-1))
  end
end
