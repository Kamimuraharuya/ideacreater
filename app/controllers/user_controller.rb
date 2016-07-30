class UserController < ApplicationController
  def name:string
  end

  def email:string
  end

  def new 
  	@user = User.new
  end
  
end
