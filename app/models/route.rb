# == Schema Information
#
# Table name: routes
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :text             not null
#  author_id   :integer          not null
#  distance    :float            not null
#  coordinates :string           default([]), not null, is an Array
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Route < ActiveRecord::Base
  validates :name, :description, :author_id, :distance, :coordinates, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
end
