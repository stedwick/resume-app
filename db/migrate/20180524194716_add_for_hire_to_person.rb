class AddForHireToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :for_hire, :boolean, default: false
  end
end
