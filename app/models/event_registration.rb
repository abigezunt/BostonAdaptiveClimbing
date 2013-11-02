class EventRegistration < ActiveRecord::Base
	belongs_to :user
	belong_to :event 
	validates :role, inclusion: { in: %w(volunteer climber family_member)}

	# def self.check_out(user)
 #    unpaid_reg = user.event_registrations.where(paid: nil)
 #    unpaid_reg.each do |reg|
 #      reg.paid = true 
 #      reg.save
 #    end
 #  end
end