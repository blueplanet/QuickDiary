class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.date :date

      t.timestamps
    end
  end
end
