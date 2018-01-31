require 'sinatra'
require 'make_todo'

get '/' do
	@list=Tarea.all
	erb :create
end

post '/create' do
	@task = Tarea.create(params[:task_name])
	redirect '/list'
end

get '/list' do
	@list = Tarea.all
	erb :list
end

get '/todo' do
	@list = Tarea.all
	erb :todo
end

get '/complete' do
	@list = Tarea.all
	erb :complete
end

post '/update' do
	Tarea.update(params["id"])
	redirect '/'
end

post '/delete' do
	Tarea.destroy(params["id"])
	redirect '/'
end

