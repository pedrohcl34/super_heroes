class CreateSuperheroes < ActiveRecord::Migration
  def change
    create_table :superheroes do |t|
      t.string :real_name
      t.string :hero_name

      t.timestamps
    end
  end
end
