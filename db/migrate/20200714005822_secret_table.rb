class SecretTable < ActiveRecord::Migration[5.2]
  def change
    create_table :secrets
    add_column :secrets, :secret_content, :text
    add_column :secrets, :secret_read, :boolean, default: false
  end
end
