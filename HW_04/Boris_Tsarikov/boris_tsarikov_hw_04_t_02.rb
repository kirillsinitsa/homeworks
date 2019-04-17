require 'yaml'

def magic_number(pool = 1, timeout = 1000)
  timeout = 1000 if timeout.nil?
  pool = 1 if pool.nil?
  pool * timeout
end

def selection_of_info(hash = {})
  result = {}
  selection(result: result, hash: hash, id: :db, selec_name: 'database')
  selection(result: result, hash: hash, id: :user, selec_name: 'username')
  selection(result: result, hash: hash, id: :password, selec_name: 'password')
  result[:magic_number] = magic_number(hash['pool'], hash['timeout'])
  result
end

def selection(result:, hash:, id:, selec_name:)
  result[id] = hash[selec_name] if hash.key?(selec_name)
end

def task_4_2(yaml_info)
  return yaml_info if yaml_info.empty?

  hash = YAML.safe_load(yaml_info)
  hash.map { |key, value| [key.to_sym => selection_of_info(value)] }.flatten
end
