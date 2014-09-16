class Bloom < ActiveRecord::Base
  attr_accessible :description, :title, :image

  mount_uploader :image, ImageUploader
end
