class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :topics, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  has_many :votings, :dependent => :destroy
  mount_uploader :image, ImageUploader
 	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
