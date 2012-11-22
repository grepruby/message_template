class User::PhotosController < ApplicationController

  before_filter :authenticate_user!
  
  def index
    @photos = current_user.user_images
  end
  
  def new
    @photo = current_user.user_images.build
  end
  
  def create
    @photo = current_user.user_images.build(params[:user_image])
    if @photo.save
      return redirect_to user_photos_path
    else
      render :action => :new
    end
  end
  
  def destroy
    @photo = current_user.user_images.find_by_id(params[:id])
    if @photo.present?
      if @photo.destroy
        flash[:error] = "Couldn't find the image"
      else
        flash[:error] = "Cannot delete the image"
      end 
    else
      flash[:error] = "Couldn't find the image"
    end
    redirect_to user_photos_path
  end
end
