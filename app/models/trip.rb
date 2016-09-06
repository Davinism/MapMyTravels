# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  author_id   :integer          not null
#  route_id    :integer          not null
#  start_date  :string           not null
#  end_date    :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  expenditure :float            not null
#

class Trip < ActiveRecord::Base
  validates :title, :author_id, :route_id, :start_date, :end_date, :expenditure, presence: true

  belongs_to :route,
    primary_key: :id,
    foreign_key: :route_id,
    class_name: :Route

  has_one :author,
    through: :route,
    source: :author
end
