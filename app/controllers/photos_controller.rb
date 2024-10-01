class PhotosController < ApplicationController

def all_photos
  render({:template=> "/photogram_templates/photos_index"})
end

def photo
  @photo_id=params.fetch("path_id")
  @photo=Photo.where({:id => @photo_id}).at(0)
  render({:template=> "/photogram_templates/photos_show"})
end 

def add_photo
  @new_photo=Photo.new
  @new_photo.image=params.fetch("add_image")
  @new_photo.caption=params.fetch("add_caption")
  @new_photo.owner_id=params.fetch("add_owner_id")
  @new_photo.save
  redirect_to("/photos/#{@new_photo.id}")
end

def update_photo
  @photo_id=params.fetch("path_id")
  @updated_photo=Photo.where({:id => @photo_id}).at(0)
  @updated_photo.caption=params.fetch("photo_caption")
  @updated_photo.image=params.fetch("photo_image")
  @updated_photo.save
  redirect_to("/photos/#{@updated_photo.id}")
end

def delete_photo
  @photo_id=params.fetch("path_id")
  @photo=Photo.where({:id => @photo_id}).at(0)
  @photo.destroy
  redirect_to("/photos")
end

end 
