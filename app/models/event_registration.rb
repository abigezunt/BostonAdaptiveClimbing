class EventRegistration < ActiveRecord::Base
	belongs_to :user
	belong_to :event 
	validates :role, inclusion: { in: %w(volunteer climber family_member)}
	delegate :first_name, :last_name, :email, :phone, :age, :disabilities, :volunteer_info, :type_of_participant, :bkbs_member, :belay_certified, :emergency_contact_name, :emergency_contact_phone, :has_shoes, :has_harness, :to => :user, :prefix => true


	# def self.check_out(user)
 #    unpaid_reg = user.event_registrations.where(paid: nil)
 #    unpaid_reg.each do |reg|
 #      reg.paid = true 
 #      reg.save
 #    end
 #  end
end