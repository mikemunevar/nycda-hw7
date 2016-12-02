require 'pp'

class UsersController < ApplicationController
    
  public
  
  before_action(:get_user, only: [:show, :edit, :update, :destroy])

  def index
    # Create a "collection" of users.  A collection is a special rails datatype.  You can use all functions from array on the collection. #MDM
    @users = User.all
  end

  # Create a "new" controller so that you can use a form helper #MDM
  def new
  end

  def show
    @user = User.find(params[:id])
    # puts @user   
    # render json: @user
  end

  def edit
    # @user = User.find(params[:id])
    # get_user
  end

  def create
    @user = User.create(user_params)
    # redirect_to(@user)
    # redirect_to_user("You just created a new user.")
    
    #check if the user is valid by the definintion in validation in the user model
    if @user.valid?
			redirect_to(@user, notice: 'Wow, you created a user!')
		else
			render(:new)
		end
  end


  def update
    # @user = User.find(params[:id])
    # get_user
    # @user.update(params[:user].permit(:title, :body)) # These are the only fields that we have on the form, so that's the only ones we will let through
    @user.update(user_params)
    # redirect_to(@user)
    redirect_to_user("You just updated the user")
  end

  # The private method does not let this be called through the URL. #MDM
  private  # Refactor here:
  def user_params
    params[:user].permit(:name, :headline, :profile, :email)  
  end  
  
  def get_user
    @user = User.find(params[:id])
  end
  
  def redirect_to_user(notice)
    redirect_to(@user, notice: notice )
  end

end