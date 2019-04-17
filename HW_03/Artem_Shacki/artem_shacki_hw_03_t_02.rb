def regex(els)
  log = els.match(/(\S+)\s+(\S+)\s+(\S+)\s+(\[.*?\])\s+(".*?")/)
  "#{log[4][1..-2]} FROM: #{log[1]} TO:#{log[5][5..-11].upcase}" unless
  log.nil? || log[5].size < 16
end

def solution(arr)
  arr.split(/\n+/).map do |el|
    regex(el)
  end
end

def task_2(str)
  solution(str).compact
end
