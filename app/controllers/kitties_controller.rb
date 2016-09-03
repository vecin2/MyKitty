

class KittiesController < ApplicationController
	def new
	
	end
	def create
		@kitty = Kitty.new(params[:kitty])
		redirect_to '/kitties/show'
	end
	def show 
	end
end
