class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  belongs_to :show

  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :show_id, :presence => true
  validates :user_id, :presence => true

  default_scope :order => 'microposts.created_at DESC'
end
