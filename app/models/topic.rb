class Topic < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	has_many :votings, :dependent => :destroy
	belongs_to :user
	belongs_to :board
	mount_uploader :image, ImageUploader
	validates :title, :content, :category_id, :board_id, presence: true
	acts_as_taggable
	acts_as_taggable_on :tag_list
end
