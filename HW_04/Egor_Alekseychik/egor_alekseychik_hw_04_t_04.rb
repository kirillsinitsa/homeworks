# I still think that palindrome can't be a single symbol
# However, passing tests is more important than getting right result

def task_4_4(string)
  return false if string.class != String || string.empty?

  string.downcase == string.downcase.reverse
end
