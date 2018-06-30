require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @answer = ""
    @phrase = params[:phrase]
    @number = params[:number].to_i
     @number.times {@answer += @phrase}
    @answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = "#{params[:word1]} "+"#{params[:word2]} "+"#{params[:word3]} "+"#{params[:word4]} "+"#{params[:word5]}."
    @string
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      @opp = +
    elsif @operation == "subtract"
      @opp = -
    elsif @operation == "multiply"
      @opp = *
    elsif @operation == "divide"
      @opp = /
    end
    @number1 @opp @number2
  end




end
