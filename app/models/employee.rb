class Employee < ActiveRecord::Base
  attr_accessible :bio, :image_url, :name, :title
end
