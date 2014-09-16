class Painting < ActiveRecord::Base
  attr_accessible :description, :title, :image

  mount_uploader :image, ImageUploader
end
