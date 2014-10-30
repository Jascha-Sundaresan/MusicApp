class Album < ActiveRecord::Base
	validates :name, :band, :tracks, :live_recording, presence: true

	belongs_to :band
	has_many :tracks

end
