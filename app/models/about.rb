class About < ActiveRecord::Base
  attr_accessible :description, :subtitle, :image

  mount_uploader :image, ImageUploader
end
