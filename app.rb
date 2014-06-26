require "sinatra/base"

class MyApp < Sinatra::Application


  def initialize
    super
    @items = ["dog", "cat", "fish"]
  end

  get '/' do
    erb :root
  end

  get '/items' do
    erb :index, :locals => {:items => @items}
  end

  get '/items/new' do
    erb :new
  end

  get '/items/:items' do
    item = params[:items]
    "Welcome to the page for #{item}"

  end



  run! if app_file == $0

end





# get "/items" do
#   "how many items are here?: #{@items.length}"
# end
#
#
#
# get "/items/:itendifier" do
#   identifier = params[:identifier]
#   "you found: #{identifier}"
# end