class Band < ActiveRecord::Base
	validates :name, :albums, :tracks, presence: true
	
	has_many :albums
	has_many :tracks, through: :albums, source: :tracks
end
