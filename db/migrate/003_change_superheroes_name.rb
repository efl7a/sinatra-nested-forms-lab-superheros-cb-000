class ChangeSuperheroesName < ActiveRecord::Migration[4.2]
  rename_table :superheroes, :superheros
end
