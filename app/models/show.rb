require 'tvdb_party' #documentation: http://rubydoc.info/gems/tvdb_party/0.6.2/frames

class Show < ActiveRecord::Base
	attr_accessible :name
	
	validates :name,  :presence => true,
					  :uniqueness => true
					  
end
