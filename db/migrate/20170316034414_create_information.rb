class CreateInformation < ActiveRecord::Migration[5.0]
  
  def change
    create_table :information, {:id => false} do |t|
      t.datetime :time
      t.decimal :latitude, :precision => 9, :scale => 6
      t.decimal :longitude, :precision => 9, :scale => 6
      t.decimal :depth, :precision => 9, :scale => 6
      t.decimal :mag, :precision => 9, :scale => 6
      t.string :magType 
      t.integer :nst 
      t.decimal :gap, :precision => 9, :scale => 6
      t.decimal :dmin, :precision => 12, :scale => 6
      t.decimal :rms, :precision => 12, :scale => 6 
      t.string :net 
      t.text :id  
      t.datetime :updated 
      t.text :place 
      t.string :type  
      t.decimal :horizontalError, :precision => 12, :scale => 6
      t.decimal :depthError, :precision => 12, :scale => 6
      t.decimal :magError, :precision => 12, :scale => 6 
      t.integer :magNst  
      t.string :status  
      t.string :locationSource  
      t.string :magSource
      t.timestamps
    end
    execute "ALTER TABLE information ADD PRIMARY KEY (id);"
  end

end