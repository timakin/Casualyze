class Topic < ActiveRecord::Base
	# relationship
	has_many :comments, :dependent => :destroy
	has_many :votings, :dependent => :destroy
	has_many :topic_visits, :dependent => :destroy
	belongs_to :user
	belongs_to :board

	# validattion
	validates :title, :content, presence: true
	validates :category_id, :board_id, presence: true

	# image uploader
	mount_uploader :image, ImageUploader
	has_attached_file :clip, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	# tagging
	acts_as_taggable
	acts_as_taggable_on :tag_list
end
