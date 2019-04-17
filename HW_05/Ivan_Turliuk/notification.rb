# LeGit App (c)
# model of notifications
class Notification
  attr_accessor :status
  attr_reader :from, :note
  def initialize(status: 'default', from: 'default', note: 'default')
    @status = status
    @from = from
    @note = note
  end
end
