class CreateEspnClients < ActiveRecord::Migration
  def change
    create_table :espn_clients do |t|
      t.timestamps null: false
    end
  end
end
