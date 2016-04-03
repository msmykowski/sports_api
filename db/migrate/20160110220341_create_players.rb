class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :team
      t.string :name
      t.float :gp
      t.float :gs
      t.float :min
      t.float :ppg
      t.float :offr
      t.float :defr
      t.float :rpg
      t.float :apg
      t.float :spg
      t.float :bpg
      t.float :tpg
      t.float :fpg
      t.float :ato
      t.float :per
      t.float :fgm
      t.float :fga
      t.float :fg
      t.float :thpm
      t.float :thpa
      t.float :thp
      t.float :ftm
      t.float :fta
      t.float :ft
      t.float :tpm
      t.float :tpa
      t.float :tp
      t.float :pps
      t.float :afg

      t.timestamps null: false
    end
  end
end
