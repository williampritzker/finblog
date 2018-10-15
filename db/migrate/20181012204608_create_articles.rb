class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.integer :user_id
      t.integer :subpage_id

      t.timestamps
    end
  end
end
