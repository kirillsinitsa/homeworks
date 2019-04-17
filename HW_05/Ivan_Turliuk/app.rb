# LeGit App (c)
# application views
require_relative 'le_git'
# setting environment
Dir.chdir(File.dirname(__FILE__))
executing = true
# users login
puts 'Login student:'
student_pid = gets.chomp
student = Student.new(pid: student_pid)
puts 'Login mentor:'
mentor_pid = gets.chomp
mentor = Mentor.new(pid: mentor_pid)
git = LeGit.new(student: student, mentor: mentor)
# LeGit session
while executing
  print '> '
  main_menu = gets.chomp
  case main_menu
  when 'help', 'man'
    if File.exist?('./manual.txt')
      manual = File.open('./manual.txt')
      puts manual.read
      manual.close
    else
      puts 'Manual file is missing.'
    end
  when 'do'
    git.keep_track(homework: student.do_homework)
  when 'hwl'
    git.homework_list
  when 'submit'
    git.submit_homework
  when 'check'
    git.check_request
  when 'sbs'
    git.subscribe_to_student
  when 'rdn'
    git.read_notifications!
  else
    puts 'LeGit closed.'
    executing = false
  end
end
