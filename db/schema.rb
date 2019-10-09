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

ActiveRecord::Schema.define(version: 2019_06_21_032040) do

  create_table "battle_classes", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.integer "hit_points"
    t.integer "attack_power"
    t.integer "defense"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "battle_class_id"
    t.integer "profession_id"
    t.integer "race_id"
    t.integer "user_id"
    t.integer "hit_points"
    t.integer "attack_power"
    t.integer "defense"
    t.index ["battle_class_id"], name: "index_characters_on_battle_class_id"
    t.index ["profession_id"], name: "index_characters_on_profession_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "monster_verbages", force: :cascade do |t|
    t.string "verbage"
    t.integer "monster_id"
    t.index ["monster_id"], name: "index_monster_verbages_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "hit_points"
    t.integer "attack_power"
    t.integer "defense"
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.string "picture"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.integer "hit_points"
    t.integer "attack_power"
    t.integer "defense"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.integer "damage"
    t.integer "defense"
    t.string "picture"
  end

end
