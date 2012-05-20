class Employee < ActiveRecord::Base
  attr_accessible :bio, :order, :image_url, :name, :title
end
