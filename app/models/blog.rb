# == Schema Information
#
# Table name: blogs
#
#  id                   :bigint           not null, primary key
#  description          :text             not null
#  title                :string           not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  author_id            :bigint           not null
#  exhibition_period_id :bigint           not null
#
# Indexes
#
#  index_blogs_on_author_id             (author_id)
#  index_blogs_on_exhibition_period_id  (exhibition_period_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#  fk_rails_...  (exhibition_period_id => exhibition_periods.id)
#
class Blog < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :author
  belongs_to :exhibition_period
end
