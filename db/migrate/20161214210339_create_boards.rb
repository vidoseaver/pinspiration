class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.text :name
      t.boolean :private, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
