require 'yaml'

def number(pool, timeout)
  timeout = 1000 if timeout.nil?
  pool = 1 if pool.nil?
  pool * timeout
end

def new_value(hsh)
  value = {}
  value[:db] = hsh['database'] if hsh.key?('database')
  value[:user] = hsh['username'] if hsh.key?('username')
  value[:password] = hsh['password'] if hsh.key?('password')
  value[:magic_number] = number(hsh['pool'], hsh['timeout'])
  value
end

def task_4_2(yml)
  return yml if yml.empty?

  config = YAML.safe_load(yml)
  config.map do |key, value|
    [key.to_sym => new_value(value)]
  end.flatten
end
