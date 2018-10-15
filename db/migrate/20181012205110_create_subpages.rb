class CreateSubpages < ActiveRecord::Migration[5.2]
  def change
    create_table :subpages do |t|
      t.string :title
      t.integer :page_id

      t.timestamps
    end
  end
end
