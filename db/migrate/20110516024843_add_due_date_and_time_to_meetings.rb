class AddDueDateAndTimeToMeetings < ActiveRecord::Migration
  def self.up
    add_column :meetings, :due_date, :date
    add_column :meetings, :due_time, :time
  end

  def self.down
    remove_column :meetings, :due_time
    remove_column :meetings, :due_date
  end
end
