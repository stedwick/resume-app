class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name, index: true
      t.string :link
      t.string :icon
      t.string :image
      t.string :description
      t.text :blurb
      t.string :location
      t.string :dates

      t.belongs_to :person, index: true
      t.integer :order, index: true
      t.string :type, index: true
      t.timestamps
    end
  end
end
