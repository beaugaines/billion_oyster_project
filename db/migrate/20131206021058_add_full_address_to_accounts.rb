class AddFullAddressToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :full_address, :string
  end
end
