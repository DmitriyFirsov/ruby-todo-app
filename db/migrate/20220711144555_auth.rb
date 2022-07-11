# frozen_string_literal: true

class Auth < ActiveRecord::Migration[7.0]
  def change
    create_table :access_tokens, id: :uuid do |t|
      t.timestamp :expired, null: false
      t.string    :user_agent, null: false
      t.belongs_to :users, foreign_key: true, type: :uuid
    end

    add_column :users, :password, :string

    execute <<-SQL
         UPDATE users u set password = '123456'
    SQL

    change_column_null :users, :password, false
  end
end