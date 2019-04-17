require 'yaml'

def get_magic_number(pool, timeout)
  pool = 1 unless pool.is_a?(Integer) && !pool.nil?
  timeout = 1000 unless timeout.is_a?(Integer) && !timeout.nil?
  pool * timeout
end

def get_hash(value)
  new_hash = {}
  new_hash[:db] = value['database'] unless value['database'].nil?
  new_hash[:user] = value['username'] unless value['username'].nil?
  new_hash[:password] = value['password'] unless value['password'].nil?
  new_hash[:magic_number] = get_magic_number(value['pool'], value['timeout'])
  new_hash
end

def process(hash)
  # change hash -> rename keys: database, username, password
  # add new key magic_number
  res = []
  if hash.is_a?(Hash)
    hash.map do |key, value|
      new_hash = {}
      new_hash[key.to_sym] = get_hash(value)
      res << new_hash
    end
  end
  res
end

def task_4_2(str)
  process(YAML.safe_load(str)) if str.is_a?(String) && !str.nil?
end
