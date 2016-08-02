class TopController < ApplicationController


protect_from_forgery except: :create

	def index
		 @last = Note.last.id

		@word1 = Note.find(rand(@last) + 1)
		@word2 = Note.find(rand(@last) + 1)
		@word3 = Note.find(rand(@last) + 1)
		@word = Note.new
	end

		



	def create
		@word = Note.create(create_params)
		redirect_to "/"
	end

private
	def create_params
		params.require(:note).permit(:word)

	end

end
