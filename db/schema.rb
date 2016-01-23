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
    t.string 'team'
    t.string 'name'
    t.string 'gp'
    t.string 'gs'
    t.string 'min'
    t.string 'ppg'
    t.string 'offr'
    t.string 'defr'
    t.string 'rpg'
    t.string 'apg'
    t.string 'spg'
    t.string 'bpg'
    t.string 'tpg'
    t.string 'fpg'
    t.string 'ato'
    t.string 'per'
    t.string 'fgm'
    t.string 'fga'
    t.string 'fg'
    t.string 'thpm'
    t.string 'thpa'
    t.string 'thp'
    t.string 'ftm'
    t.string 'fta'
    t.string 'ft'
    t.string 'tpm'
    t.string 'tpa'
    t.string 'tp'
    t.string 'pps'
    t.string 'afg'
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
