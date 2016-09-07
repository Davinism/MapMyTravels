# == Schema Information
#
# Table name: friend_taggings
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  friend_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class FriendTagging < ActiveRecord::Base
  validates :user_id, :friend_id, presence: true
  validates_uniqueness_of :user_id, scope: :friend_id

  validate :user_id_cannot_be_friend_id

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :friend,
    primary_key: :id,
    foreign_key: :friend_id,
    class_name: :User

  def user_id_cannot_be_friend_id
    if self.user_id == self.friend_id
      errors[:user_id] << "can't be the same as the friend."
    end
  end
end
