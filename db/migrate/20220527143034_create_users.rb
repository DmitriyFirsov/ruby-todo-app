class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name, index: { unique: true, name: 'unique_name' }, null: false
      t.string :email, index: { unique: true, name: 'unique_email' }, null: false
      t.string :avatar

      t.timestamps
    end
  end
end
