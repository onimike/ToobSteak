# == Schema Information
#
# Table name: shows
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Shows < ActiveRecord::Base

	validates :name,  :presence => true,
					  :uniqueness => true
					  
end
