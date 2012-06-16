class CreateDiaryTemplates < ActiveRecord::Migration
  def change
    create_table :diary_templates do |t|
      t.integer :seq
      t.string :title

      t.timestamps
    end
  end
end
