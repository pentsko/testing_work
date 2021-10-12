class RenameReadedToRead < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :readed, :read
  end
end
