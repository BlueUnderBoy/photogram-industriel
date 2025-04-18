class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:username))
  end

  def liked
    @user = User.find_by!(username: params.fetch(:username))
  end

  def feed
    @photos = Photo.all

    @user = User.find(current_user.id)
    
    @user.own_photos = Photo.where(owner_id: @user).order(created_at: :desc)
  end

  def discover 
    @photos = Photo.all

    @user = User.find(current_user.id)
    
    @user.own_photos = Photo.where(owner_id: @user).order(created_at: :desc)
  end
end
