class Employee < ActiveRecord::Base
  attr_accessible :name, :title, :bio, :order, :avatar
  
  mount_uploader :avatar, AvatarUploader
end
