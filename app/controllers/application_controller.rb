class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/todos" do
    Todo.all.to_json(include: { category: { only: [:name] } })
  end

  get "/categories" do 
    Category.all.to_json
  end

  post "/todos" do
    todo = Todo.create(task: params[:task], category_id: params[:category_id])
    todo.to_json(include: { category: { only: [:name] } })
  end

  patch "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.update(task: params[:task], category_id: params[:category_id])
    todo.to_json(include: { category: { only: [:name] } })
  end

  delete "/todos/:id" do
    todo = Todo.find(params[:id])
    todo.destroy
  end

end
