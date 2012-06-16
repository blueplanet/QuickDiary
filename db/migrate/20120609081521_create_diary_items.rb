class CreateDiaryItems < ActiveRecord::Migration
  def change
    create_table :diary_items do |t|
      t.references :diary
      t.integer :no
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
