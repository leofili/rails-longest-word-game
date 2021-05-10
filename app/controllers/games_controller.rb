class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(10)
  end

  def score
    @letters = params[:letters].gsub(" ","").chars
    @word = params[:word]
    @result = @word.chars.all? { |letter| @word.count(letter) <= @letters.count(letter) }
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
  end
end