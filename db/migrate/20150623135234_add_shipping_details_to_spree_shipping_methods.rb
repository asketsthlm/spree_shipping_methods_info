class AddShippingDetailsToSpreeShippingMethods < ActiveRecord::Migration
  def change
    add_column :spree_shipping_methods, :delivery_time, :string
    add_column :spree_shipping_methods, :return_conditions, :string
  end
end
