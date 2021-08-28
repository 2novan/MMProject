class AddPlayersToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, index: true, unique: true
    add_column :users, :total_wins, :integer, default: 0
    

  end
end
