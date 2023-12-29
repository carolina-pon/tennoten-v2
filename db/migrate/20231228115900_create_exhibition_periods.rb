class CreateExhibitionPeriods < ActiveRecord::Migration[7.0]
  def change
    create_table :exhibition_periods do |t|
      t.string :date, null: false
      t.timestamps
    end
  end
end
