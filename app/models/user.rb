class User < ActiveRecord::Base
  # the attributes in the table editable from the web form should be present in the list
  attr_accessible :name,:email, :password, :password_confirmation

  has_secure_password

  before_save { |user| user.email= user.email.downcase}

  #validates that name is not blank and the max length is 50
  validates :name,presence: true, length: {maximum: 50}

  #contsant for valid mail REGEX
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]{2,}\z/i
  #validates that email is non blank
  validates :email,presence: true, format: { with: VALID_EMAIL_REGEX},
                   uniqueness: { case_sensitive: false} #adds unique capability to attribute

  validates :password, presence: true
  validates :password_confirmation, presence: true, length: {minimum: 6}
end
