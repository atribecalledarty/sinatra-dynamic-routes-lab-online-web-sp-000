require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversedname = params[:name].reverse
    "The reverse is #{@reversedname}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "The square is #{@square}"
  end
  
  get '/say/:number/:phrase' do
    counter = 0
    while (counter < params[:number].to_i) do
      "#{params[:phrase]}"
      counter += 1
    end
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "Hi #{params[:word1]}. You are #{params[:word2]}, and I am #{params[:word3]}. Let's go #{params[:word4]} that #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
    when "subtract"
    when "multiply"
    when "divide"
  end
end