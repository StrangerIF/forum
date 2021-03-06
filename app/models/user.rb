class User < ApplicationRecord
  before_save {self.email = email.downcase}
  before_create :create_remember_token
  has_many :messages
  has_many :categories
  validates :username, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,  
                    length: { maximum: 50 }, 
                    format: {with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  has_secure_password
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end
  
  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  private
  # For new users
  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
