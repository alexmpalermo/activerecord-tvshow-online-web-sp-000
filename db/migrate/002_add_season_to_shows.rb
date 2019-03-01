class AddSeasonToShows < ActiveRecord::Migration[5.1]
  
  def change 
    add_column :shows do |t|
      t.string :season
  end
  end 
end