class AddMonthAndYearToCollection < ActiveRecord::Migration
  def change
    add_column :collections, :month, :integer
    add_column :collections, :year, :integer
  end
end
