class GroupsController < ApplicationController
  before_filter :login_required
  
  def new
    @group = Group.new
  end
  
  def show
    params[:id] = Group
  end
  
  def create
    @group = Group.create(params[:group])
    redirect_to group_path(@group)
  end
    
  private
  
  def login_required
    redirect_to login_path if current_user.nil?
  end
  
end