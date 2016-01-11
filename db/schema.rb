# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_160_110_220_341) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'espn_clients', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'espn_instantiators', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'espn_parsers', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'players', force: :cascade do |t|
    t.string 'name'
    t.integer 'gp'
    t.integer 'gs'
    t.integer 'min'
    t.integer 'ppg'
    t.integer 'offr'
    t.integer 'defr'
    t.integer 'rpg'
    t.integer 'apg'
    t.integer 'spg'
    t.integer 'bpg'
    t.integer 'tpg'
    t.integer 'fpg'
    t.integer 'ato'
    t.integer 'per'
    t.integer 'fgm'
    t.integer 'fga'
    t.integer 'fg'
    t.integer 'thpm'
    t.integer 'thpa'
    t.integer 'thp'
    t.integer 'ftm'
    t.integer 'fta'
    t.integer 'ft'
    t.integer 'tpm'
    t.integer 'tpa'
    t.integer 'tp'
    t.integer 'pps'
    t.integer 'afg'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'teams', force: :cascade do |t|
    t.string 'name'
    t.string 'abbr'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
