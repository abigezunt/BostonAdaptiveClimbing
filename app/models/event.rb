class Event < ActiveRecord::Base
	has_many :event_registrations
	has_many :users, through: :event_registrations
	scope :future, -> { where("'start_date' > ?", Date.today)}
end
