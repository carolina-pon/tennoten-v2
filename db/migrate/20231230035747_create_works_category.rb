class CreateWorksCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :works_categories do |t|
      t.references :work, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end
  end
end
