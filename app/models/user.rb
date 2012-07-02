class User < ActiveRecord::Base
  # the attributes in the table editable from the web form should be present in the list
  attr_accessible :name,:email
  
  #validates that name is not blank and the max length is 50
  validates :name,presence: true, length: {maximum: 50}
  
  #validates that email is non blank
  validates :email,presence: true
end
