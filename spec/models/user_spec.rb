require 'spec_helper'

describe User do
# pending "add some examples to (or delete) #{__FILE__}"
  before { @user = User.new(name: 'Example User',email: 'user@example.com')}
  subject {@user}

  it {should respond_to :name }
  it {should respond_to :email }
  
  it{should be_valid }
  
  describe "when name is not present" do
    before { @user.name = " "}
    it { should_not be_valid }
  end
  
  describe "when email is not present" do
    before { @user.email = " "}
    it {should_not be_valid }
  end
  
  describe "when name is too long" do
    before { @user.name = 'a'*51}
    it {should_not be_valid}
  end
  
  describe "when email is invalid" do
    it "should be invalid" do
      address = %w[user@foo,com user_at_foo.org example.user@foo. ]
      address.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end
    end
  end
  describe "when email format is valid" do
    it "should be valid" do
      address = %w[user@foo.COM A_USE@f.b.org user_a@b.foo.org example.user@foo.jp a+b@baz.cn ]
      address.each do |valid_address|
        @user.email = valid_address
        @user.should be_valid
      end
    end
  end
  describe "when duplicate email address" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end
    
    it { should_not be_valid}
  end
end
