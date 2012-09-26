class AddPriceToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :price, :decimal, :precision => 10, :scale => 2
  end
end
