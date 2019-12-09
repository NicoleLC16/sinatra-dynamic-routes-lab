require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse
  end

  get "/square/:number" do 
      @number = params[:number].to_i**2
      @number.to_s
    # binding.pry
  end

  get "/say/:number/:phrase" do 
    @phrase = params[:phrase]
    @times = params[:number].to_i
    repeated_phrase = (@phrase * @times)
    "#{repeated_phrase}"
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    sum = @number1 + @number2
    difference = @number2 - @number1
    product = @number1 * @number2
    quotient = @number1 / @number2

    case @operation
      when "add"
        sum.to_s
      when "subtract"
        difference.to_s
      when "multiply"
        product.to_s
      when "divide"
        quotient.to_s
    end

  end
end
