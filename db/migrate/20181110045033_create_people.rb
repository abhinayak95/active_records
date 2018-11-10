class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.references :role
      t.references :location
      t.integer :manager_id
      t.decimal :salary
      t.timestamps
    end
  end
end
