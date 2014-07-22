class User < ActiveRecord::Base
has_many :comments
has_many :reports

has_attached_file :avatar, :styles => 
{ :medium => '300x300>', 
:thumb => '100x100>'}

 validates_attachment_content_type :avatar, 
 :content_type => /\Aimage\/.*\Z/


validates :email_address, :confirm_password, :last_name, :first_name, presence: true, on: :create
validates :email_address, uniqueness: true, on: :create




 # Here i place all methods involving users

  def password=(pwd)
  @password = pwd
  return if pwd.blank?
  create_new_salt
  self.hashed_password = User.encrypted_password(@password, self.salt)
  end
  # Returns user if the supplied email and password match with database

  
  def User.authenticate(email, password)
    user = User.find_by( email_address: email )
    if user
      password_attempt = User.encrypted_password(password, user.salt)
      if password_attempt != user.hashed_password
        user = nil
      end
    end
    return user
  end
  

  private
  def create_new_salt
    # generates some values and stored intro the databse 
  self.salt = Digest::SHA256.hexdigest(Time.now.to_s + rand.to_s)
  end
  
  def User.encrypted_password(pwd, salt)
    string_to_hash = pwd.to_s + salt.to_s
    Digest::SHA256.hexdigest(string_to_hash)
  end


end

#class Comment < ActiveRecord::Base
#belongs_to :users
#belongs_to :report
#end

#class Report < ActiveRecord::Base
#has_many :comments
#belongs_to :user
#end
