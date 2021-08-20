class UsersController < ApplicationController
 
 
  def my_portfolio
    @user = current_user
    @tracked_stocks= current_user.stocks
  end

  def my_friends
    @q = current_user.friends.ransack(params[:q])
    @friends = @q.result(distinct: true)
    
  end
  def show
    @user= User.find(params[:id])
    @tracked_stocks= @user.stocks
  end

  # def search
  #   if params[:friend].present?
  #     @friend = params[:friend]
  #     if @friend
  #       respond_to do |format|
  #         format.js { render partial: 'users/friend_result' }
  #       end
  #     else
  #       respond_to do |format|
  #         flash.now[:alert] = "Couldn't find user"
  #         format.js { render partial: 'users/friend_result' }
  #       end
  #     end    
  #   else
  #     respond_to do |format|
  #       flash.now[:alert] = "Please enter a friend name or email to search"
  #       format.js { render partial: 'users/friend_result' }
  #     end
  #   end
  # end
end
