class GamesController < ApplicationController
  def new
    alphabet = ("A".."Z").to_a
    @letters = []
    10.times do
      @letters << alphabet[rand(25)]
    end
  end

  def score
    # if
    word_included = true
    @letters = params["letters"].downcase.split(" ")
    @word = params["word"].downcase.split("")
    @word.each do |char|
      if @letters.count(char) < @word.count(char)
        word_included = false
      end
    end
    if word_included
      @result_message = "The word is included in the letters!"
    else
      @result_message = "The word is NOT included in the letters"
    end 
    # binding.pry
  end
end
