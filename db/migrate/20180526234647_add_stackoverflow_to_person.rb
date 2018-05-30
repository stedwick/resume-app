class AddStackoverflowToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :stackoverflow, :string
  end
end
