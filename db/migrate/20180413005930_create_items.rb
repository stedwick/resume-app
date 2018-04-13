class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name, index: true
      t.string :link
      t.string :icon
      t.string :description
      t.text :blurb
      t.string :dates
      t.string :type_of, index: true
      t.string :image
      t.string :fa
      t.integer :order, index: true
      t.belongs_to :person, index: true

      t.timestamps
    end
  end
end
