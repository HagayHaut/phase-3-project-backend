class TasksController < ApplicationController

      get '/tasks' do 
        Task.all.to_json(methods: [:date_format, :category])
      end
    
      get '/tasks/:id' do 
        Task.find(params[:id]).to_json
      end
    
      post '/tasks' do 
        category = Category.find_by(name: params[:category])
        task = Task.create(
          description: params[:description],
          completed: false,
          due_by: params[:due_by],
          reminder: params[:reminder],
          category: category
        )
        task.to_json(methods: [:date_format, :category])
      end
    
      patch '/tasks/:id' do
        task = Task.find(params[:id])
        task.update(
          completed: params[:completed],
          reminder: params[:reminder]
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