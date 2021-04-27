# frozen_string_literal: false

def find_error(logs)
  errors = logs.split("\n").select { |log| log.downcase.include?('error') }
  puts errors.empty? ? '' : errors[0]
end
