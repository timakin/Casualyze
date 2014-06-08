class Category < ActiveRecord::Base
  has_many :boards, :dependent => :destroy
  has_many :topics, :through => :boards, :dependent => :destroy
  has_many :comments, :through => :topics, :dependent => :destroy
end
