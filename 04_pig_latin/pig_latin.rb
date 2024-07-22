# frozen_string_literal: true

def translate(value)
  vowel_list = %w[a e i o u qu]

  result = []
  value.split.each do
    consonants_to_replace = get_consonants_to_replace(_1, vowel_list)
    result << if consonants_to_replace.empty?
                "#{_1}ay"
              else
                "#{_1[consonants_to_replace.length..]}#{consonants_to_replace}ay"
              end
  end

  result.join(' ')
end

def get_consonants_to_replace(value, vowel_list)
  consonants_to_replace = []
  for i in 0..value.length do
    if value[i] == 'q' && vowel_list.include?(value[i..i + 1])
      consonants_to_replace << value[i..i + 1]
      next
    end

    break if vowel_list.include?(value[i]) == true

    consonants_to_replace << value[i]
  end

  consonants_to_replace.join('')
end
