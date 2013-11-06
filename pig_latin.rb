class PigLatin

  class << self
    def translate(word)
      @word = word.to_s
      @word.gsub!(/(.)(.*)/, '\2\1') unless begins_with_vowel?
      "#{@word}ay"
    end

    def begins_with_vowel?
      %w(a e i o u).include? @word[0]
    end

  end
end