class TopController < ApplicationController

def index
	@words=Note.all
end

end
