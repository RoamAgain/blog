class User < ActiveRecord::Base
  attr_accessible :name,:email
  
  validates :name,presence: true
end
