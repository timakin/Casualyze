class Topic < ActiveRecord::Base
	has_many :comments, :dependent => :destroy
	belongs_to :user
	belongs_to :board
end
