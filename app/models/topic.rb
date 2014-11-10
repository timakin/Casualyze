class Topic < ActiveRecord::Base
	has_attached_file :clip, 
										:styles => {
											:medium => "300x300>",
											:thumb => "100x100>",
											:mini_thumb => "100x100"
											},
										:convert_options => {
   										:mini_thumb  => "-gravity Center -crop 50x50+0+0"
 										}

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
	validates_attachment_content_type :clip, :content_type => %w(image/jpeg image/jpg image/png)

	# tagging
	acts_as_taggable
	acts_as_taggable_on :tag_list

	# pagination
	paginates_per 10
end
