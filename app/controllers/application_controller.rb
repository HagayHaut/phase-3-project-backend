class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/tasks' do 
    Task.all.to_json
  end

  get '/categories' do 
    Category.all.to_json
  end

  get '/tasks/:id' do 
    Task.find(params[:id]).to_json
  end

  get '/categories/:id' do 
    Category.find(params[:id]).to_json
  end

  post '/categories' do
    Category.create(name: params[:name]).to_json
  end

  post '/tasks' do 
    category = Category.find_by(name: params[:category])
    task = Task.create(
      description: params[:description],
      completed: params[:completed],
      due_by: params[:due_by],
      category: category
    )
    task.to_json
  end

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      completed: true
    )
    task.to_json
  end

  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  delete '/categories/:id' do
    category = Category.find(params[:id])
    category.destroy
    category.to_json
  end
  
end
