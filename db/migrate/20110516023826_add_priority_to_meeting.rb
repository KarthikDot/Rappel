class AddPriorityToMeeting < ActiveRecord::Migration
  def self.up
    add_column :meetings, :priority, :int
  end

  def self.down
    remove_column :meetings, :priority
  end
end
