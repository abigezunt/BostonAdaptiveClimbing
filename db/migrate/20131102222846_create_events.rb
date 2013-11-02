class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, default: "Adaptive Climbing Session"
      t.text :description, default: "Bi-Weekly Boston Adaptive Climbing for people with physical disabilities. Day passes are half price for anyone registering under our group ($11). If you are a person with a physical disability interested in climbing, or a volunteer looking to share the experience, then sign up here! Please respect the time of our volunteers and call, email, or Facebook message to cancel if you are unable to attend after you register. Free day passes are available from time to time for those on a fixed budget. Email info@bostonadaptiveclimbing.com for availability."
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.timestamps
    end
  end
end
