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

ActiveRecord::Schema.define(version: 2018_12_07_113952) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "banner_inferiors", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "banners", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "url"
  end

  create_table "cats", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "estado", default: 0
    t.integer "cat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "slug"
    t.index ["cat_id"], name: "index_cats_on_cat_id"
    t.index ["slug"], name: "index_cats_on_slug", unique: true
  end

  create_table "empresas", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "slug"
    t.index ["slug"], name: "index_marcas_on_slug", unique: true
  end

  create_table "producto_imagens", force: :cascade do |t|
    t.integer "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["producto_id"], name: "index_producto_imagens_on_producto_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.decimal "precio"
    t.decimal "precio_oferta"
    t.integer "destacado"
    t.integer "estado", default: 0
    t.integer "cat_id"
    t.integer "marca_id"
    t.integer "c_relacionada"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subcat"
    t.string "url"
    t.string "slug"
    t.integer "price_cents"
    t.integer "disponible"
    t.integer "code"
    t.index ["cat_id"], name: "index_productos_on_cat_id"
    t.index ["marca_id"], name: "index_productos_on_marca_id"
    t.index ["slug"], name: "index_productos_on_slug", unique: true
  end

  create_table "subproductos", force: :cascade do |t|
    t.string "color"
    t.integer "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.string "modelo"
    t.string "tamanho"
    t.string "peso"
    t.string "cantidad"
    t.string "acabamento"
    t.string "recolhimento"
    t.string "rolamento"
    t.string "caplinhna"
    t.decimal "precio", precision: 5, scale: 2
    t.string "codigo"
    t.string "freio"
    t.string "potencia"
    t.string "tension"
    t.string "acao"
    t.string "peso_de_arremesso"
    t.string "resistencia"
    t.string "diametro"
    t.index ["producto_id"], name: "index_subproductos_on_producto_id"
  end

  create_table "vendedores", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo"
    t.string "email"
    t.string "telefone"
    t.string "whatsapp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

end
