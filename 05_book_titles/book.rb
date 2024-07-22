# frozen_string_literal: true

class Book
  attr_reader :title

  def title=(value)
    @title = titleize value
  end

  def titleize(word)
    excluded_words = %w[and over the a an in of]
    capitalize_lambda = ->(v) { excluded_words.include?(v) ? v : v.capitalize } # trying smth new for me here

    word.capitalize.split.map(&capitalize_lambda).join(' ')
  end
end
