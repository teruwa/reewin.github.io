class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #:confirmable
         
  has_many :loginuserpost
  validates :kentyou_id, presence: true
  
  mount_uploader :avatar, AvatarUploader
  mount_uploader :avatar2, AvatarUploader
  mount_uploader :avatar3, AvatarUploader
end
