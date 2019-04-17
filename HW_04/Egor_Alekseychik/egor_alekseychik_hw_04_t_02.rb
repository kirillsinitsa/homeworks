require 'yaml'

def task_4_2(input)
  return {} if input.empty?

  hash = YAML.safe_load(input)
  remove_n_add(hash)
  array = []
  hash.each do |key, value|
    buffhash = {}
    buffhash[key] = value
    array << buffhash
  end
  array
end

def remove_n_add(bighash)
  changekeys(bighash)
  bighash.map do |_, value|
    value[:magic_number] = magicnumber(value[:pool], value[:timeout])
    value.delete_if { |key, _| removeable?(key) }
    rename_keys(value)
  end
  bighash
end

def changekeys(hash)
  hash.map { |_, values| values.transform_keys!(&:to_sym) }
  hash.transform_keys!(&:to_sym)
end

def removeable?(key)
  %i[adapter encoding reconnect socket pool timeout].include? key
end

def rename_keys(hash)
  hash[:db] = hash.delete(:database)
  hash[:user] = hash.delete(:username) if hash.key?(:username)
end

def magicnumber(pool, timeout)
  pool = 1 if pool.nil?
  timeout = 1000 if timeout.nil?
  pool * timeout
end
