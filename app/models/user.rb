class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :event_registrations
  has_many :events, through: :event_registrations

  # def unpaid_balance
  # 	unpaid_event_registrations = EventRegistration.where(user_id: self.id, paid: nil).where('price is not null')
  # 	balance = 0
  # 	unpaid_event_registrations.each do |event_registration|
  # 		  balance += event_registration.price
  # 	end
  # 	return balance
  # end
end
