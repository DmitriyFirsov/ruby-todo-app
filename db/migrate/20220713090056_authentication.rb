# frozen_string_literal: true

class Authentication < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password_hash, :string

    execute <<-SQL
         UPDATE users u set password_hash = '#{BCrypt::Password.create('123456')}'
    SQL

    change_column_null :users, :password_hash, false
  end
end
