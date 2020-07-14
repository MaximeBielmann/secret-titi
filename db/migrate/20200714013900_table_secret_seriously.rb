class TableSecretSeriously < ActiveRecord::Migration[5.2]
  def change
    rename_table(:old_secrets, :secrets)
  end
end
