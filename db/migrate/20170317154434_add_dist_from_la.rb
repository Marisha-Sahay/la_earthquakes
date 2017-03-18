class AddDistFromLa < ActiveRecord::Migration[5.0]
  def change
    add_column :information, :dist_from_la, :float
  end
end
