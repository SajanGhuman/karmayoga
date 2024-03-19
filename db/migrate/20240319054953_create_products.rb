class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_desc
      t.integer :product_price
      t.string :product_category
      t.string :image_url
      t.string :product_url

      t.timestamps
    end
  end
end
