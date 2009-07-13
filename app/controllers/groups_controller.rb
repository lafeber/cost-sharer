class GroupsController < ApplicationController
  before_filter :login_required
  
  def new
    @group = Group.new
  end
  
  def show
    group = Group.find(params[:id])
    redirect_to(group_transactions_path(group))
  end
  
  def index
    
  end
  
  def create
    @group = Group.create(params[:group])
    current_user.groups << @group
    current_user.save
    
    redirect_to group_path(@group)
  end
    
  private
  
  def login_required
    redirect_to login_path if current_user.nil?
  end
  
end