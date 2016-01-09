class CreateEspnInstantiators < ActiveRecord::Migration
  def change
    create_table :espn_instantiators do |t|

      t.timestamps null: false
    end
  end
end
