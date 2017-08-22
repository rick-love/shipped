class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :planes

  before_create :system_add_user

  def system_add_user
  	"useradd #{self.username}"
  end

  before_save :encrypt_password

  def encrypt_password
  self.password = BCrypt.encrypt(self.password, self.password_salt)
end

  validates :email, presence: true, message: "You need to enter an email."
  validates :email, uniqueness: true

end
