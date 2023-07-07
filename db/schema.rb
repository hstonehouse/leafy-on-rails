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

ActiveRecord::Schema[7.0].define(version: 20_230_707_031_520) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'aliases', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'plant_id'
    t.index ['plant_id'], name: 'index_aliases_on_plant_id'
  end

  create_table 'favourites', force: :cascade do |t|
    t.integer 'plants_id'
    t.integer 'users_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['plants_id'], name: 'index_favourites_on_plants_id'
    t.index ['users_id'], name: 'index_favourites_on_users_id'
  end

  create_table 'plants', force: :cascade do |t|
    t.string 'title'
    t.string 'image'
    t.string 'water'
    t.string 'light'
    t.string 'pet_safe'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.string 'password'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'aliases', 'plants', on_delete: :cascade
end
