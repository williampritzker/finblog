class CreateArticletags < ActiveRecord::Migration[5.2]
  def change
    create_table :articletags do |t|
      t.integer :tag_id
      t.integer :article_id

      t.timestamps
    end
  end
end
