# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_707_055_642) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'aliases', force: :cascade do |t|
    t.text 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'plant_id'
    t.index ['plant_id'], name: 'index_aliases_on_plant_id'
  end

  create_table 'favourites', force: :cascade do |t|
    t.bigint 'user_id', null: false
    t.bigint 'plant_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['plant_id'], name: 'index_favourites_on_plant_id'
    t.index ['user_id'], name: 'index_favourites_on_user_id'
  end

  create_table 'plants', force: :cascade do |t|
    t.text 'title'
    t.text 'image'
    t.text 'water'
    t.text 'light'
    t.text 'pet_safe'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.text 'email'
    t.text 'password'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'aliases', 'plants', on_delete: :cascade
  add_foreign_key 'favourites', 'plants'
  add_foreign_key 'favourites', 'users'
end
