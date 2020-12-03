require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @squared = params[:number].map { |e| e ** 2 }.to_s
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @say_phrase = params[:number] * params[:phrase] 
    "#{@say_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @say = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5].to_s
    "#{@say}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:number1].to_s + params[:number2].to_s
    "#{@operation}"
  end

end