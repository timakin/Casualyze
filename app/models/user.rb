class User < ActiveRecord::Base
  attr_accessor :login

	has_attached_file :avatar, 
										:styles => {
											:medium => "300x300>",
											:thumb => "100x100>",
											:mini_thumb => "75x75"
											},
										:convert_options => {
   										:mini_thumb  => "-gravity Center -crop 50x50+0+0"
 										}


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
  has_many :topics, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  has_many :votings, :dependent => :destroy
  mount_uploader :image, ImageUploader
 	validates_attachment_content_type :avatar, :content_type => %w(image/jpeg image/jpg image/png)
  validates :name, presence: true

  def email_required?
    false
  end

      def self.find_first_by_auth_conditions(warden_conditions)
        conditions = warden_conditions.dup
        if login = conditions.delete(:login)
            where(conditions).where(["lower(name) = :value OR lower(email) = :value", { :value => login.downcase }]).first
        else
            where(conditions).first
        end
    end
end