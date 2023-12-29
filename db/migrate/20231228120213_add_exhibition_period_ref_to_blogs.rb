class AddExhibitionPeriodRefToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :exhibition_period, null: false, foreign_key: true
  end
end
