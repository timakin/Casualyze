class Category < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

  has_many :boards, :dependent => :destroy
  has_many :topics, :through => :boards, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  accepts_nested_attributes_for :boards, :allow_destroy => true
  validates :name, presence: true

  def should_generate_new_friendly_id?
  	new_record? || slug.blank?
	end
end
