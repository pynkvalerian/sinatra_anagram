require_relative '../../config/environment'
require_relative '../../config/database'
require 'byebug'


class Word < ActiveRecord::Base
  # Remember to create a migration!
  attr_accessor :word, :sorted_word, :anagrams
  @anagrams = []

  def self.anagrams(word)

    self.find_each do |w|
      if w[:sorted_word] == word
        @anagrams << w[:word]
      else
        next
      end
    end
    @anagrams
  end
end
