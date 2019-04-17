def task_4_4(str)
  str.downcase == str.downcase.reverse if chack_validation(str) == true
end

def chack_validation(input)
  if input.class == String
    true
  else
    puts 'Incorrect data entered'
    false
  end
end
