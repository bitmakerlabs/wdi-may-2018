#
# number_of_houses = 10
# number_of_subdivisions = 33
# message = "Given that there are #{number_of_houses} houses per subdivision and #{number_of_subdivisions} subdivisions, we'll need #{number_of_houses * number_of_subdivisions} total houses."
#
# puts message
#
#
# vancouver_houses = 9
# vancouver_subdivisions = 13
# vancouver_message = "Given that there are #{vancouver_houses} houses per subdivision and #{vancouver_subdivisions} subdivisions, we'll need #{vancouver_houses * vancouver_subdivisions} total houses."
# puts vancouver_message


def get_housing_message(houses, subdivisions)
  return "Given that there are #{houses} houses per subdivision and #{subdivisions} subdivisions, we'll need #{houses * subdivisions} total houses."
end

message = get_housing_message(10, 33)
puts message

vancouver_message = get_housing_message(9, 13)
puts vancouver_message
puts get_housing_message(9, 13)

# puts get_housing_message('sandy beach', 'walrus')

houses = 5
subdivisions = 23
puts get_housing_message(houses, subdivisions)


name = 'April'
# def say_hello
#   return "Hello, #{name}!"
# end

def say_hello(name, name2)
  # place = 'Argentina' # not available outside the method!
  return "Hello, #{name} and #{name2}!"
end

name = 'Sandra'
puts say_hello(name, 'Bernie')

# puts place
# puts "Hello!"
puts '----------------'


def react_to_temperature(temperature)
  if temperature < -10
    return "Brr, it's cold!"
  elsif temperature < 8
    return "Wear a coat! But it's fine."
  end

  puts "Yup, that's what I'm going to do!"
end

puts react_to_temperature(5)
puts react_to_temperature(-12)
puts react_to_temperature(13)



puts '----'


def breathe_fire
  "FIRRREEEEE"
  # puts 5 + 15
end

puts breathe_fire

puts '-------'

def build_car(size)
  frame = build_frame(size)
  car = add_engine + frame
  wheels = add_wheels(size)
  car += "\n#{wheels}"
  return car
end

# def build_car
#   return add_engine + build_frame + "\n#{add_wheels}"
# end

def build_frame(frame_size)
  return "|" * frame_size
end

def add_wheels(frame_size)
  wheel_space = " " * (frame_size - 2)
  return "[]#{wheel_space}[]"
  # return "[]#{' ' * (frame_size - 2)}[]"
end

def add_engine
  return "/."
end

# puts build_frame
# puts add_engine
# puts add_wheels
puts build_car(8)


















#
