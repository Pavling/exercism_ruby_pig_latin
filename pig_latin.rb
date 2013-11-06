class PigLatin

  class << self
    def translate(word)
      @word = word.to_s
      move_consonant_sound unless begins_with_vowel?
      "#{@word}ay"
    end

    def begins_with_vowel?
      %w(a e i o u).include? @word[0]
    end

    private
    def move_consonant_sound
      rules_for_first_sound = [
        "[^aeiou]qu", #consonant followed by "qu" sound'
        "ch",
        "qu",
        "." #finally, any other characher
      ]
      @word.gsub!(%r((#{rules_for_first_sound.join("|")})(.*)), '\2\1')
    end
  end
end