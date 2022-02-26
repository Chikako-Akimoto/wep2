class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|

    t.string :name　#製品名

    t.text :description　#備考（説明）




      t.timestamps
    end
  end
end
