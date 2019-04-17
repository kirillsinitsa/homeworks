# LeGit App (c)
require 'net/http'
require 'json'
require_relative 'student'
require_relative 'mentor'
require_relative 'homework'
require_relative 'notification'
# application controllers
class LeGit
  attr_reader :student, :mentor
  def initialize(student: Student.new, mentor: Mentor.new)
    @student = student
    @mentor = mentor
    @hwn = 0
    @hw_list = {}
    @ntfn = 0
    @ntf_list = {}
    @sb_list = {}
  end

  private

  def write_down(hwk: Homework.new)
    @hwn += 1
    @hw_list[@hwn] = hwk
  end

  def int(threshold: 1)
    n = gets.chomp.to_i
    n <= 0 || n > threshold ? 1 : n
  end

  public

  def keep_track(homework: Homework.new)
    write_down(hwk: homework)
  end

  def homework_list
    if @hw_list.size.zero?
      puts 'Any homeworks.'
    else
      @hw_list.each { |n, hwk| puts "#{n}: #{hwk.what} (#{hwk.note})" }
    end
  end

  def submit_homework
    keep_track(homework: @student.do_homework) if @hwn.zero?
    homework_list
    print 'Submit homework number: '
    @hwn == 1 ? (puts sbn = 1) : sbn = int(threshold: @hwn)
    hwk = @hw_list[sbn]
    print "#{sbn}: #{hwk.what} "
    puts "(#{hwk.note}) submission status:"
    post_request(homework: hwk)
    notifications(about: hwk, who: @student)
  end

  def post_request(homework: Homework.new)
    body = {
      homework_source: homework.what,
      student: @student.pid,
      pr_title: homework.note
    }
    uri = URI('https://www.example.edu')
    p Net::HTTP.post(uri, body.to_json)
  rescue SocketError
    puts 'internet connection failed.'
  end

  def notifications(about: Homework.new, who: @student)
    return false unless subscribed_to?(student: who)

    @ntfn += 1
    @ntf_list[@ntfn] = Notification.new(
      status: 'new',
      from: who.pid,
      note: about.what
    )
  end

  def check_request
    if @hwn.zero?
      puts 'Nothing to check.'
    else
      homework_list
      print 'Check homework: '
      htc = int(threshold: @hwn)
      @mentor.check_homework(hwk: @hw_list[htc])
    end
  end

  def subscribed_to?(student: @student)
    @sb_list[student.pid] == true
  end

  def subscribe_to_student
    @sb_list[@student.pid] = true
    puts "Now subscribed to #{@student.pid}."
  end

  def read_notifications!
    if @ntf_list.size.zero?
      puts 'Any notifications.'
    else
      puts 'Current notifications:'
      @ntf_list
        .each { |_, ntf| puts "[#{ntf.status}] from #{ntf.from} - #{ntf.note}" }
        .map { |_, ntf| ntf.status = 'read' }
      puts 'All notifications are read now.'
    end
  end
end
