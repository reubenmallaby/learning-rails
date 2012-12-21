class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :order
      t.integer :page_count

      t.timestamps
    end
  end
end
