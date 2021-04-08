class GamesController < ApplicationController
  def new
    alphabet = ("A".."Z").to_a
    @letters = []
    10.times do
      @letters << alphabet[rand(25)]
    end
  end
  
  def score
  end
end
