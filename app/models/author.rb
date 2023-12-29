# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  site       :string
#  sns        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Author < ApplicationRecord
  validates :name, presence: true
  has_many :works, dependent: :destroy
  has_many :blogs, dependent: :destroy
end
