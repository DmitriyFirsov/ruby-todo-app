class Auth < ActiveRecord::Migration[7.0]
  def change
    create_table :access_tokens, id: :uuid |t|
      t.timestamp :expired, null: false
      t.string    :user_agent, null: false
    end 

    add_reference :users, :access_tokens, foreign_key: true

    add_column :users, :password, :string, null: false
  end
end
