class Meeting < ActiveRecord::Base
  validates :title,  :presence => true
  validates_date :due_date, :on_or_after => :today
  validates_date :due_time, :on_or_after => :now
  
  # Set up Associations  
  belongs_to :user
end
