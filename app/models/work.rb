# == Schema Information
#
# Table name: works
#
#  id          :bigint           not null, primary key
#  description :text             not null
#  images      :string           not null
#  material    :string           not null
#  size        :string
#  title       :string           not null
#  weight      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :bigint           not null
#
# Indexes
#
#  index_works_on_author_id  (author_id)
#
# Foreign Keys
#
#  fk_rails_...  (author_id => authors.id)
#
class Work < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :material, presence: true
  validates :images, presence: true
end
