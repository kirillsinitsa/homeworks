def cut(message)
  message.each_line.map do |line|
    next unless line.include?('Calling core with action')

    line.match(/^\d{4}[\-\d{2}]*{2}\s[\d{2}\:]*{2}\d{2}\.\d/)
        .to_s.delete('.').delete(':').match(/.{5}$/).to_s.to_i
  end
end

def filtered(message)
  cut(message).reject(&:nil?).reverse \
              .map { |x| x.round(-3) * 0.6 + x - x.round(-3) }
end

def task_3(message)
  return '0' if filtered(message) == []

  (filtered(message).reduce(:-) * 0.1).to_s
end
