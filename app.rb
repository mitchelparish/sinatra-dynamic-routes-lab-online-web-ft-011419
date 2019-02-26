require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number * number}.to_s"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    @phrase
  end






end
