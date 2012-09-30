class CreateHomeMainBanners < ActiveRecord::Migration
  def change
    create_table :home_main_banners do |t|
      t.string :name
      t.string :url
      t.integer :ordering, :default => 0
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
