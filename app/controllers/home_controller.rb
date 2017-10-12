class HomeController < ApplicationController
	def index
		@cats = Cat.all
		@users = User.all
		@todos = Todo.all
	end

end
