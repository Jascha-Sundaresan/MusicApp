class Album < ActiveRecord::Base
	validates :name, :band, :live_recording, presence: true

	belongs_to :band
	has_many :tracks

end
