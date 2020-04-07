class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age, default: 1
      t.date :found_on, default: Date.today

      t.timestamps
    end
  end
end
