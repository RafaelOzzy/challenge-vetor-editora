class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :pschologist, :boolean
    add_column :users, :patient, :boolean
  end
end
