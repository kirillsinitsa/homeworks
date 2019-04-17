# task 2
require 'yaml'

def magic_number(pool, timeout)
  pool = 1 if pool.nil?
  timeout = 1000 if timeout.nil?
  pool * timeout
end

def parse(hash)
  hash = hash.map { |key, value| [key.to_sym, value] }.to_h
  hash2 = {}
  hash2[:db] = hash[:database]
  hash2[:user] = hash[:username]
  hash2[:password] = hash[:password]
  hash2[:magic_number] = magic_number(hash[:pool], hash[:timeout])
  hash2.delete_if { |_key, value| value.nil? }
end

def main_hash(hash)
  hash.map { |key, value| [key.to_sym, parse(value)] }.to_h
end

def task_4_2(input)
  return {} if input.empty?

  array = []
  array << YAML.safe_load(input)
  arr = []
  array[0].each do |key, value|
    hash = {}
    hash[key] = value
    arr << hash
  end
  arr.map { |h| main_hash(h) }
end
