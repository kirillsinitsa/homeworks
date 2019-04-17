# LeGit App (c)
# mentor controllers
class Mentor
  attr_reader :pid
  def initialize(pid: 'default')
    @pid = pid
  end

  def check_homework(hwk: Homework.new)
    puts hwk.what.end_with?('.rb') ? 'Excellence!' : 'Pff...'
  end
end
