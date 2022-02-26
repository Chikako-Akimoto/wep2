class AddColumnToTasks2 < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :chip, :string
    add_column :tasks, :kiban, :string
  end
  end
end
