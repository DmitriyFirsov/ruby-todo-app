class LinksAndChecks < ActiveRecord::Migration[7.0]
  def change
    change_table :tasks do |t|
      t.change_null :name, false
      t.change_null :description, false
    end
    add_reference :tasks, :user, type: :uuid
  end
end
