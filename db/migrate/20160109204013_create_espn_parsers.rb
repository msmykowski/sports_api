class CreateEspnParsers < ActiveRecord::Migration
  def change
    create_table :espn_parsers do |t|
      t.timestamps null: false
    end
  end
end
