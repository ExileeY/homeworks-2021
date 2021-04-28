# frozen_string_literal: false

DATETIME = /^\d{4}-\d{1,2}-\d{1,2}\s\d{1,2}:\d{1,2}:\d{1,2}\.\d{1}/.freeze

require 'time'
def calc_duration(actions)
  duration_results = []
  prev_datetime = ''

  actions.split("\n").each do |action|
    current_datetime = action.match(DATETIME)[0]
    unless prev_datetime.empty?
      duration_results << (Time.parse(current_datetime) - Time.parse(prev_datetime)).round(1).to_s
    end
    prev_datetime = current_datetime
  end

  duration_results.empty? ? '0' : duration_results
end
