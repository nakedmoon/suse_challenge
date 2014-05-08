class CreateMutants < ActiveRecord::Migration
  def change
    create_table :mutants do |t|
      t.string :name
      t.string :country
      t.references :team, index: true

      t.timestamps
    end
  end
end
