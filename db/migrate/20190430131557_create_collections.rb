class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
