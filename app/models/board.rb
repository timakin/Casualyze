class Board < ActiveRecord::Base
	extend FriendlyId
	friendly_id :board_name, use: [:slugged, :finders]

	has_many :topics, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  validates :board_name, :category_id, presence: true

  def should_generate_new_friendly_id?
  	new_record? || slug.blank?
	end
end
