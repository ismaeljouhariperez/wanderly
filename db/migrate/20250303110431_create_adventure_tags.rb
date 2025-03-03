class CreateAdventureTags < ActiveRecord::Migration[8.0]
  def change
    create_table :adventure_tags do |t|
      t.references :adventure, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
