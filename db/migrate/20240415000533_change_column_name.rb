class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :pschologist, :psychologist
  end
end
