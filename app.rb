require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name].reverse

    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i

    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    words = Array.new
    params.each do |key, value|
      words << value
    end

    "#{words.join(" ")}."
  end

end
