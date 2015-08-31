class WelcomeController < ApplicationController

	include SessionsHelper
	def index
		puts "here"
		puts current_user
		puts "done"
	end
end
