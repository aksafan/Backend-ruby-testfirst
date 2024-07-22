# frozen_string_literal: true

def echo(value)
  value
end

def shout(value)
  value.upcase
end

def repeat(value, times = 2)
  ("#{value} " * times).strip
end

def start_of_word(word, number_of_letter)
  word[0, number_of_letter]
end

def first_word(sentance)
  sentance.split[0]
end

def titleize(word)
  excluded_words = %w[and over the]

  word.capitalize.split.map { excluded_words.include?(_1) ? _1 : _1.capitalize }.join(' ')
end
