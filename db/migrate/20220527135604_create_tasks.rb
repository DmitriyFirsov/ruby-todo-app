class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :name, null: false
      t.string :email, index: { unique: true }, null: false
      t.string :avatar

      t.timestamps
    end

    create_table(:tasks, id: :uuid) do |t|
      t.string :name, null: false
      t.text :description, null: false

      t.timestamps

      t.belongs_to :user, foreign_key: true, type: :uuid
    end
  end
end
