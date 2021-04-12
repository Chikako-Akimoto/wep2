class AddColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
    t.add_column :tasks, :productno, :string
    t.add_column :tasks, :client, :string
    t.add_column :tasks, :qty, :integer
    t.add_column :tasks, :mt, :string
    t.add_column :tasks, :workschedule, :string
  end
  end
end
