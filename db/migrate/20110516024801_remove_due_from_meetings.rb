class RemoveDueFromMeetings < ActiveRecord::Migration
  def self.up
    remove_column :meetings, :due
  end

  def self.down
    add_column :meetings, :due, :datetime
  end
end
