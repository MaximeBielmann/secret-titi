class DropTableSecrets < ActiveRecord::Migration[5.2]
  def change
    rename_table(:secrets, :old_secrets)
  end
end
