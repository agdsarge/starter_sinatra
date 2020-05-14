class ArtistsController < Sinatra::Base

    set :views, "app/views/artists"


    get "/artists" do
        @artists = Artist.all
        erb :index_artist
    end

    get "/artists/new" do
        erb :new_artist
    end

    post "/artists" do
        artist = Artist.create(name: params[:name], hometown: params[:hometown], instrument: params[:instrument])
        redirect "/artists/#{artist.id}"
    end

    get "/artists/:id/edit" do
        @artist = Artist.find(params[:id])
        erb :edit_artist
    end

    get "/artists/:id" do
        @artist = Artist.find(params[:id])
        erb :show_artist
    end

    put "/artists/:id" do
        artist = Artist.find(params[:id])
        artist.update(name: params[:name],
                        hometown: params[:hometown],
                        instrument: params[:instrument])
        redirect "/artists/#{artist.id}"
    end

    delete "/artists/:id" do
        Artist.delete(params[:id])
        redirect "/artists"
    end

end
