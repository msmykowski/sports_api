class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :team
      t.string :name
      t.string :gp
      t.string :gs
      t.string :min
      t.string :ppg
      t.string :offr
      t.string :defr
      t.string :rpg
      t.string :apg
      t.string :spg
      t.string :bpg
      t.string :tpg
      t.string :fpg
      t.string :ato
      t.string :per
      t.string :fgm
      t.string :fga
      t.string :fg
      t.string :thpm
      t.string :thpa
      t.string :thp
      t.string :ftm
      t.string :fta
      t.string :ft
      t.string :tpm
      t.string :tpa
      t.string :tp
      t.string :pps
      t.string :afg

      t.timestamps null: false
    end
  end
end
