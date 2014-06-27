class Category < ActiveRecord::Base
  has_many :boards, :dependent => :destroy
  has_many :topics, :through => :boards, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
  accepts_nested_attributes_for :boards, :allow_destroy => true
  validates :name, presence: true
end
