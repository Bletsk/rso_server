class ProjectsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def index
		@projects = Project.all
		render json: @projects.as_json(include: :todos)
	end

	def create
	end

	def update
	end

	def all
		@projects = Project.all
		render json: @projects
	end
end
