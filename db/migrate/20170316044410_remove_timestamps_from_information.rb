class RemoveTimestampsFromInformation < ActiveRecord::Migration[5.0]
  def change
    remove_column :information, :created_at, :string
    remove_column :information, :updated_at, :string
  end
end
