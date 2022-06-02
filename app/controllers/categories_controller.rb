class CategoriesController < ApplicationController


    get '/categories' do 
        Category.all.to_json
    end

    post '/categories' do 
        Category.create(name: params[:name]).to_json
    end

end