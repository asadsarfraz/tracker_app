class FriendshipsController < ApplicationController
  def create
    friend= User.find(params[:friend])
    current_user.friendships.build(friend_id: friend_id)
    if current_user.save
      flash[:notice]= "Following Friend"
    else
      flash[:alert]= "something wrong with tracking request"
      redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id:  params[:id]).first
    friendship.destroy
    flash[:notice]= "Stopped Following"
    redirect_to my_friends_path
  end
end
