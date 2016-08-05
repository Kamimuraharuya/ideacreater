class TopController < ApplicationController

	def slot
		 @last = Note.last.id
        @words = Note.all
		@word1 = Note.find(rand(@last) + 1)
		@word2 = Note.find(rand(@last) + 1)
		@word3 = Note.find(rand(@last) + 1)
		@word = Note.new
	end

	def index
	@words = Note.all
	@word = Note.new
    end 
  


	def create
		@word = Note.create(create_params)
		redirect_to "/index"
	end

private
	def create_params
		params.require(:note).permit(:word)

	end

end
