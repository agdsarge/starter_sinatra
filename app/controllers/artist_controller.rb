class ArtistsController < Sinatra::Base

    set :views, "app/views/artists"
    set :method_override, true

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

end
