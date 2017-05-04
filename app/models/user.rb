
class User < ActiveRecord::Base

  has_many :donations
  has_many :children, :through => :donations
  has_many :schools, :through => :donations

  include BCrypt

  validates :email, uniqueness: true
  validates :email, :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(input_password)
    if self.password == input_password
      return self
    else
      return nil
    end
  end

end
