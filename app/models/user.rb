class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :tweets
  serialize :following, Array
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :bio, length: { minimum: 10, too_short: "must be 10 characters"}
         
  mount_uploader :avatar, AvatarUploader
         
end
