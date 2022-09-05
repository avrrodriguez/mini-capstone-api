class ChangeDataTypes < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 20, scale: 2
  end
end
