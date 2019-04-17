require 'yaml'

def magic_number(pool, timeout)
  pool = 1 if pool.nil?
  timeout = 1000 if timeout.nil?
  pool * timeout
end

def delete_empty(array)
  array.map(&:compact)
end

def get_hash(hashes)
  hashes.each_value.to_a.map do |env|
    {
      db: env['database'],
      user: env['username'],
      password: env['password'],
      magic_number: magic_number(env['pool'], env['timeout'])
    }
  end
end

def task_4_2(text)
  return text if text.empty?

  hashes = YAML.safe_load(text)
  values = get_hash(hashes)
  values = delete_empty(values)
  hashes.keys.map.with_index { |key, index| { key.to_sym => values[index] } }
end
