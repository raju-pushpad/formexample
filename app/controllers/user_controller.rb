class UserController < ApplicationController
  def index
  end
  def new
  	@registration=Registration.new
  end
  def create
  	# debugger
  	# data=params[:registration]
  	 # @res=Registration.new(name:data[:name],contact:data[:contact],education:data[:education],gender:data[:gender],skills:data[:skills],aboutyou:data[:aboutyou])
  	 @res=Registration.create(registration_params)
  	 @res.save
  	 
  	 redirect_to user_path(@res)
  	# byebug
  end
  def show
  	@record=Registration.last
  	# byebug
  end
  private
  def registration_params
  	params.require(:registration).permit(:name, :contact, :education, :gender , :skills , :aboutyou, :description, :description1)
  end
end
 