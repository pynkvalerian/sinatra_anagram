require 'byebug'
require_relative '../models/word'

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @input = params['word']
  @sorted_word = @input.split("").sort.join("")
  @anagrams = Word.anagrams(@sorted_word)
  erb :index
end

post '/sorted_word' do
  @word = params[:word]
  redirect to("/#{@word}")
  erb :index
end
