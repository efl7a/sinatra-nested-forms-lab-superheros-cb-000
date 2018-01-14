class CreateSuperheroes < ActiveRecord::Migration[4.2]
  create_table :superheroes do |t|
    t.string :name
    t.string :power
    t.string :biography
    t.integer :team_id
  end
end
