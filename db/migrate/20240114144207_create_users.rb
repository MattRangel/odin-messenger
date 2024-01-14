# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  create_table :users do |t|
    ## Database authenticatable
    t.string :email,              null: false, default: "", index: { unique: 'true' }
    t.string :encrypted_password, null: false, default: ""

    ## Recoverable
    t.string   :reset_password_token, index: { unique: 'true' }
    t.datetime :reset_password_sent_at

    ## Rememberable
    t.datetime :remember_created_at

  end
end
