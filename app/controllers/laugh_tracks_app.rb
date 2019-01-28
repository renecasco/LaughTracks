class LaughTracksApp < Sinatra::Base
  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :"comedians/index"
  end

  get '/comedians/:id' do
    @comedians = Comedian.where(params[:id])
    @specials = Special.all
    erb :"comedians/index"
  end
end
