class TodosController < ApplicationController
	skip_before_action :verify_authenticity_token

	def create
		@todo = Todo.new(params.require(:todo).permit(:text, :project_id))

		@todo.save
		redirect_to root_path
	end

	def update
		#data_json = JSON.parse request.body.read
		#@todo = Todo.find(data_json.id)
		@todo = Todo.find(params[:id])

		@todo.isCompleted = !@todo.isCompleted
		@todo.save

		#redirect_to root_path
	end

	def all
		@todos = Todo.all
		render json: @todos
	end
end
