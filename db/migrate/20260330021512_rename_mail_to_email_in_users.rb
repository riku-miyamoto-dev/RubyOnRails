class RenameMailToEmailInUsers < ActiveRecord::Migration[8.1]
  def change
    rename_column :users, :sex, :gender
    rename_column :users, :mail, :email
    rename_column :users, :tel, :phone   
  end
end
