class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :chapter_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
