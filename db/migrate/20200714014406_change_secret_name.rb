class ChangeSecretName < ActiveRecord::Migration[5.2]
  def change
    rename_table(:secrets, :whispers)
  end
end
