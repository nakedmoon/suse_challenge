class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :status, default: 0
      t.references :team, index: true

      t.timestamps
    end
  end
end
