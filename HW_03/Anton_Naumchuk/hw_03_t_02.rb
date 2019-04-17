ADDRESS_REGEXP = /[A-Z]{4}.[0-9].[A-Z]{1,8}/.freeze
DATE_REGEXP = %r{\w{2}/\w{3}/\d{4}:\d{2}:\d{2}:\d{2}\D+\d{4}}.freeze
IP_REGEXP = /\d+.\d+.\d+.\d+/.freeze

def task_2(str)
  str.split("\n")
  addr = str.upcase.scan(ADDRESS_REGEXP)
  date = str.scan(DATE_REGEXP)
  ip = str.scan(IP_REGEXP)
  pp = str_1(date, addr, ip), str_2(date, addr, ip), str_3(date, addr, ip)
  addr.to_s.length < 5 ? '' : pp
end

def str_1(date, addr, ip)
  "#{date[0]} FROM: #{ip[0]} TO: /#{addr[0]}"
end

def str_2(date, addr, ip)
  "#{date[1]} FROM: #{ip[3]} TO: /#{addr[1]}"
end

def str_3(date, addr, ip)
  "#{date[2]} FROM: #{ip[3]} TO: /#{addr[2]}"
end
