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

ActiveRecord::Schema.define(version: 20170317154434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "information", id: :text, force: :cascade do |t|
    t.datetime "time"
    t.decimal  "latitude",        precision: 9,  scale: 6
    t.decimal  "longitude",       precision: 9,  scale: 6
    t.decimal  "depth",           precision: 9,  scale: 6
    t.decimal  "mag",             precision: 9,  scale: 6
    t.string   "magType"
    t.integer  "nst"
    t.decimal  "gap",             precision: 9,  scale: 6
    t.decimal  "dmin",            precision: 12, scale: 6
    t.decimal  "rms",             precision: 12, scale: 6
    t.string   "net"
    t.datetime "updated"
    t.text     "place"
    t.string   "type"
    t.decimal  "horizontalError", precision: 12, scale: 6
    t.decimal  "depthError",      precision: 12, scale: 6
    t.decimal  "magError",        precision: 12, scale: 6
    t.integer  "magNst"
    t.string   "status"
    t.string   "locationSource"
    t.string   "magSource"
    t.float    "dist_from_la"
  end

end
