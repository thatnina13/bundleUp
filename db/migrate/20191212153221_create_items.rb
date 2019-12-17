class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :size
      t.string :category
      t.string :zip_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
