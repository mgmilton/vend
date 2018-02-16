class UpdatePriceOnSnacks < ActiveRecord::Migration[5.1]
  def change
    remove_column :snacks, :price, :decimal
    add_column :snacks, :price, :decimal, :precision => 15,
  end
end
