class AddReminderToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :reminder, :boolean
  end
end
