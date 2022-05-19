class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, foreign_key: true, null: false
      t.references :list, foreign_key: true, null: false

      t.timestamps
    end
  end
end
