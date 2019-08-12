class GamesController < ApplicationController
  def new
    charset = Array('A'..'Z')
    @letters = Array.new(10) { charset.sample }
  end

  def score
  @letters = params[:letters]
  check = @letters.chars
  @word = params[:word].upcase

  correct = []

  @word.chars do |letter|
    if check.include?(letter)
      check.delete(letter)
      correct.push(true)
    else
      correct.push(false)
    end
  end
    if correct.include?(false)
      @check = false
    else
      @check = true
    end
  end
end
