class SongsController < Sinatra::Base

    set :views, "app/views/songs"
    
    get "/songs" do
        @songs = Song.all
        erb :index_song
    end

    get "/songs/new" do
        erb :new_song
    end

    post "/songs" do
        song = Song.create(title: params[:title], duration: params[:duration], genre: params[:genre])

        redirect "/songs/#{song.id}"
    end

    get "/songs/:id/edit" do
        @song = Song.find(params[:id])
        erb :edit_song
    end

    get "/songs/:id" do
        @song = Song.find(params[:id])
        erb :show_song
    end

    put "/songs/:id" do
        song = Song.find(params[:id])
        song.update(title: params[:title],
                        duration: params[:duration],
                        genre: params[:genre])
        redirect "/songs/#{song.id}"
    end

    delete "/songs/:id" do
        Song.delete(params[:id])
        redirect "/songs"
    end


end
