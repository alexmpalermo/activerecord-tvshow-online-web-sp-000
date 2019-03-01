class Fix < ActiveRecord::Migration
  def change
    change_column :shows, date: :day, :string 
  end
end