def task_2(str)
  fr = ' FROM: '
  to_t = ' TO: /TEST'
  res = []
  str.each_line do |s|
    id = s[/(\d{1,3}\.){3}\d{1,3}/]
    date = s[/\d{1,3}.\w{1,3}.(\d{1,4}\:){3}\d{1,3}\s\+\d{1,4}/]
    pr = s[%r{\w{1,8}\s(/\w{1,10}){3}}]

    res << date + fr + id + to_t + pr[10..20].upcase if date && id && pr
  end
  res
end
