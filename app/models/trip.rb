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
#  log         :text             default(""), not null
#

class Trip < ActiveRecord::Base
  validates :title, :author_id, :route_id, :start_date, :end_date,
  :expenditure, :log, presence: true

  validate :end_date_greater_than_start_date
  validate :expenditure_greater_than_zero
  validate :expenditure_must_be_a_number

  belongs_to :route,
    primary_key: :id,
    foreign_key: :route_id,
    class_name: :Route

  has_one :author,
    through: :route,
    source: :author

  has_many :comments,
    primary_key: :id,
    foreign_key: :trip_id,
    class_name: :Comment

  def end_date_greater_than_start_date
    end_date_array = self.end_date.split("/")
    start_date_array = self.start_date.split("/")

    date_end = Date.strptime(
      "{#{end_date_array[0]}, #{end_date_array[1]}, #{end_date_array[2]}}",
      "{%m, %d, %Y}"
    )

    date_start = Date.strptime(
      "{#{start_date_array[0]}, #{start_date_array[1]}, #{start_date_array[2]}}",
      "{%m, %d, %Y}"
    )

    if date_start >  date_end
      errors[:start_date] << "can't be greater than the end_date."
    end
  end

  def expenditure_greater_than_zero
    if self.expenditure < 0
      errors[:expenditure] << "can't be a negative value."
    end
  end

  def expenditure_must_be_a_number
    if self.expenditure.class != Float && self.expenditure.class != Fixnum
      errors[:expenditure] << "must be a number."
    end
  end
end
