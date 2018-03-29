class Project < ApplicationRecord
	has_many :todos

	#def as_json options={}
	#	{
	#		title: title,
	#		todos: getTodoChildren
	#	}
	#end

	#def getTodoChildren
	#	@retValue = []
	#	todos.each do |x|
	#		@retValue.push(x.id)
	#	end
	#	return @retValue
	#end
end
