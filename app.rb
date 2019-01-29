require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number]
    @squared_num = params[:number].to_i * params[:number].to_i
    "#{@squared_num}"
  end

  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    elsif params[:operation] == 'subtract'
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    elsif params[:operation] == 'multiply'
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    elsif params[:operation] == 'divide'
      @quotient = params[:number1].to_i / params[:number2].to_i
      "#{@quotient}"
    end
  end
end
