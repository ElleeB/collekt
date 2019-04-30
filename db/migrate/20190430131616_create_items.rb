class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :collection_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
