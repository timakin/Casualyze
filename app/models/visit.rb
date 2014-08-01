class Visit < ActiveRecord::Base
  has_many :ahoy_events, class_name: "Ahoy::Event"
  has_many :topic_visits, :dependent => :destroy
  belongs_to :user
end
