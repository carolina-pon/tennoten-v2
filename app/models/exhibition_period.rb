# == Schema Information
#
# Table name: exhibition_periods
#
#  id         :bigint           not null, primary key
#  date       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ExhibitionPeriod < ApplicationRecord
  validates :date, presence: true
  has_many :blogs, dependent: :destroy
end
