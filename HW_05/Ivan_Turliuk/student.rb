# LeGit App (c)
# student controllers
class Student
  attr_reader :pid
  def initialize(pid: 'default')
    @pid = pid
  end

  def do_homework
    print 'Source: '
    what = gets.chomp
    print 'PR title: '
    note = gets.chomp
    Homework.new(what: what, who: @pid, note: note)
  end
end
