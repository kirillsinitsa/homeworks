def get_date(date)
  # 2018-04-23 17:17:49.7 ubuntu[14319] Debug - Calling core with action: event
  date.scan(/(.*) ubuntu/).flatten.first
end

require 'time'

def task_3(str)
  time = []
  if str.is_a?(String)
    str.lines.map! do |s|
      time << Time.parse(get_date(s)) if s.include?('Calling core with action:')
    end
  end
  time.size == 2 ? (time[1] - time[0]).to_s : '0'
end
