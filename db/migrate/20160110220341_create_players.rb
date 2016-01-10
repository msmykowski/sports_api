class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :gp
      t.integer :gs
      t.integer :min
      t.integer :ppg
      t.integer :offr
      t.integer :defr
      t.integer :rpg
      t.integer :apg
      t.integer :spg
      t.integer :bpg
      t.integer :tpg
      t.integer :fpg
      t.integer :ato
      t.integer :per
      t.integer :fgm
      t.integer :fga
      t.integer :fg
      t.integer :thpm
      t.integer :thpa
      t.integer :thp
      t.integer :ftm
      t.integer :fta
      t.integer :ft
      t.integer :tpm
      t.integer :tpa
      t.integer :tp
      t.integer :pps
      t.integer :afg

      t.timestamps null: false
    end
  end
end
