require 'date'
def task_3(str)
  lines = str.split("\n")
  lines.select! do |i|
    i.include?('Calling core with action')
  end

  return 0.to_s if lines.length < 2

  tmcnt(spl(lines[0]), spl(lines[1]))
end

def spl(str)
  arr = str.split(' ')
  datetime = arr[0].split('-') + arr[1].split(':')
  datetime.map!(&:to_f)
  datetime
end

def tmcnt_bgn(bgn)
  Time.mktime(bgn[0], bgn[1], bgn[2], bgn[3], bgn[4], bgn[5])
end

def tmcnt_ent(ent)
  Time.mktime(ent[0], ent[1], ent[2], ent[3], ent[4], ent[5])
end

def tmcnt(bgn, ent)
  (tmcnt_ent(ent) - tmcnt_bgn(bgn)).round(1).to_s
end
