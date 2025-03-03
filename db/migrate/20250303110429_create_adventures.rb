class CreateAdventures < ActiveRecord::Migration[8.0]
  def change
    create_table :adventures do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
