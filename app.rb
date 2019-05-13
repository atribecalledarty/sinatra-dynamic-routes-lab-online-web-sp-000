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
    params[:number].to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    when "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    when "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    when "divide"
      @division = params[:number1].to_i / params[:number2].to_i
      "#{@division}"
    end
  end
end