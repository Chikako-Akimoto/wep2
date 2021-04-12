class AddDeliverydateToTasks < ActiveRecord::Migration[6.1]
  def change
  create_table :tasks do |t|

    t.add_column :tasks, :deliverydate, :date
end
  end
end
