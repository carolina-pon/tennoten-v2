class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.string :site
      t.string :sns
      t.timestamps
    end
  end
end
