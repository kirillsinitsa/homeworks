# LeGit App (c)
# model of homeworks
class Homework
  attr_reader :what, :who, :note
  def initialize(what: 'default', who: 'default', note: 'default')
    @what = what
    @who = who
    @note = note
  end
end
