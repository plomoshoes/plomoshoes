class AddOrderingToShoe < ActiveRecord::Migration
  def change
    add_column :shoes, :ordering, :integer, :default => 0
  end
end
