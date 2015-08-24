

module WordsImporter
  def self.import
    puts Dir.pwd
    file = 'db/dict.txt'
    f = File.read(file)
    f.each_line do |word|
      Word.create(word: word.strip, sorted_word: word.strip.downcase.split("").sort.join(""))
    end
  end
end