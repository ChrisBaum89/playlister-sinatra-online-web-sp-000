class GenresController < ApplicationController
  get '/genres' do
    erb :'genres/index'
  end

  get '/genres/:slug' do
    @genre = Genre.all.find_by_slug(params[:slug])
    erb :'genres/show'
  end
end
