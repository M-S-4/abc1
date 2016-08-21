class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.integer :order
      t.string :video_link
      t.belongs_to :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
