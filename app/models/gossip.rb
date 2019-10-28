class Gossip < ApplicationRecord
	belongs_to :user

	def self.show_all
		all_gossips = Gossip.all
	#	return all_gossips
	end
end
