# == Schema Information
#
# Table name: works_categories
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint           not null
#  work_id     :bigint           not null
#
# Indexes
#
#  index_works_categories_on_category_id  (category_id)
#  index_works_categories_on_work_id      (work_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (work_id => works.id)
#
class WorksCategory < ApplicationRecord
  belongs_to :work
  belongs_to :category
end
