#take in two numbers and a modifier


def run_calculator()
  puts "Please enter a number"
  first_num = gets.strip

# allows user to exit program at any point

  if first_num == "Q"
    exit
  end
  first_num = first_num.to_f
  select_modifier(first_num)
end

def select_modifier(first_num)
  puts "Enter the modifier for the equation"
  modifier = gets.strip
  if modifier == "Q"
    exit
  end
  case modifier
  when "+","-","/","*"
    get_second_number(first_num, modifier)
  else
    puts "That is not a valid selection"
    select_modifier(first_num)
  end
end

def select_another_modifier(answer)
  puts "Select the next modifier, tpye C to clear the calculator, or type Q to quit"
  modifier = gets.strip
  if modifier == "Q"
    exit
  end
  if modifier == "C"
    puts 0
    run_calculator()
  end
  case modifier
  when "+","-","/","*"
    get_second_number(answer, modifier)
  else
    puts "That is not a valid selection"
    select_another_modifier(answer)
  end
end



def get_second_number(first_num, modifier)
  puts "Please enter another number"
  second_num = gets.strip
  if second_num == "Q"
    exit
  end
  second_num = second_num.to_f

  
  #take the numbers entered and decide what to do with the modifier passed in 
  case modifier
  when "+"
    answer = addition(first_num, second_num, modifier)
    puts "#{first_num} + #{second_num} = #{answer}"
    select_another_modifier(answer)
  when "-"
    answer = subtraction(first_num, second_num, modifier)
    puts "#{first_num} - #{second_num} = #{answer}"
    select_another_modifier(answer)
  when "*"
    answer = multiply(first_num, second_num, modifier)
    puts "#{first_num} * #{second_num} = #{answer}"
    select_another_modifier(answer)
  when "/"
    answer = divide(first_num, second_num, modifier)
    puts "#{first_num} / #{second_num} = #{answer}"
    select_another_modifier(answer)
  else
    "Please enter a valid number"
    get_second_number(first_num, modifier)
  end

end


def addition(num1, num2, mod)
  num1 + num2
end

def subtraction(num1, num2, mod)
  num1 - num2
end

def multiply(num1, num2, mod)
  num1 * num2
end

def divide(num1, num2, mod)
  num1 / num2
end



run_calculator()