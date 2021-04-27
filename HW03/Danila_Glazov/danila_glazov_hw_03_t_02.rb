# frozen_string_literal: false

def format_logs(logs_str)
  valid_format = /^\d{2}\.\d{1}\.\d{3}\.\d{3}\s-\s-\s.+$/
  formated_logs = []

  logs_str.split("\n").each do |log|
    next unless log.match?(valid_format)

    data = log.match(%r{\d{1,2}/\w{3}/\d{4}:\d{2}:\d{2}:\d{2}\s\+\d{4}})
    from = log.match(/^\d{1,2}\.\d{1}\.\d{1,3}\.\d{1,3}/)
    to = log.match(%r{"\w+\s(.*)\s\w+/\d{1}\.\d{1}})[1].upcase

    formated_logs << "#{data} FROM: #{from} TO: #{to}"
  end

  formated_logs
end
