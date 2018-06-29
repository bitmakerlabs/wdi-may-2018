require 'minitest/autorun'
require 'minitest/pride'
require_relative 'temperature.rb'

class TestTemperature < MiniTest::Test
   # tests go in here
   def test_f_to_c_positive
     # 50f 10c
     expected_c_value = 10
     actual_value = f_to_c(50)

     assert_equal(expected_c_value, actual_value)
   end

   def test_f_to_c_negative
     # -4f -20c
     expected = -20
     actual = f_to_c(-4)

     assert_equal(expected, actual)
   end

   def test_c_to_f_negative
     assert_equal(-4, c_to_f(-20))
   end

   def test_c_to_f_positive
     expected_f_value = 50
     actual_value = c_to_f(10)

     assert_equal(expected_f_value, expected_f_value)
   end
end
