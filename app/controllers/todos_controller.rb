class TodosController < ApplicationController
	def create
		@todo = Todo.new(params.require(:todo).permit(:text, :project_id))

		@todo.save
		redirect_to root_path
	end
end
