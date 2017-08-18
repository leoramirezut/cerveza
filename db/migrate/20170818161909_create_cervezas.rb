class CreateCervezas < ActiveRecord::Migration[5.1]
  def change
    create_table :cervezas do |t|
      t.string :nombre
      t.float :volumen

      t.timestamps
    end
  end
end
