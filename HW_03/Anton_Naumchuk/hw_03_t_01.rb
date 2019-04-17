def task_1(str)
  array = str.split("\n")
  errors = array.select { |strg| strg.match(/error|ERROR|Error/) }
  errors.empty? ? '' : errors.first
end
