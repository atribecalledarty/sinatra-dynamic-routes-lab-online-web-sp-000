require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversedname = params[:name].reverse
    "The reverse is #{@reversedname}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i
  end
end