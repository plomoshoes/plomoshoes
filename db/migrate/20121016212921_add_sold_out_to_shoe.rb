class AddSoldOutToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :sold_out, :boolean
  end
end
