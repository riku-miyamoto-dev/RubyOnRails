class AddDetailsToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :no, :integer
    add_column :users, :rubi, :string
    add_column :users, :gender, :string 
    add_column :users, :phone, :string
    add_column :users, :mobile, :string
    add_column :users, :mail, :string
    add_column :users, :post_code, :string
    add_column :users, :address, :string
    add_column :users, :birthday, :date   
  end
end
