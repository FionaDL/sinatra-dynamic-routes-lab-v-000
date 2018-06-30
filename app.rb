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
     @number.times {@answer += puts @phrase}
    @answer
  end



end
