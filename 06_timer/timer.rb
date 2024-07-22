# frozen_string_literal: true

class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    minutes = hours > 1 ? @seconds % 3600 / 60 : @seconds / 60 % 60
    seconds = @seconds % 60

    seconds, minutes, hours = [seconds, minutes, hours].map { _1 < 10 ? "0#{_1}" : _1 }

    @seconds = "#{hours}:#{minutes}:#{seconds}"
  end
end
