# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string           not null
#  password_digest  :string           not null
#  session_token    :string           not null
#  first_name       :string           not null
#  last_name        :string           not null
#  date_of_birth    :string           not null
#  gender           :string           not null
#  bio              :text
#  hobbies          :text
#  kind_of_traveler :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ActiveRecord::Base
  validates :email, :password_digest, :session_token, :first_name,
            :last_name, :date_of_birth, :gender, presence: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :gender, inclusion: { in: ["M", "F"] }

  after_initialize :ensure_session_token
  before_validation :ensure_session_token_uniqueness

  attr_reader :password

  def self.find_by_credentials(email_address, pw)
    user = User.find_by(email: email_address)
    return user if user && user.is_password?(pw)
    nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    new_session_token = User.generate_session_token
    while new_session_token == self.session_token
      new_session_token = User.generate_session_token
    end
    self.session_token = new_session_token
    self.save
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=(pw)
    @password = pw
    self.password_digest = BCrypt::Password.create(pw)
  end

  def is_password?(pw)
    pw_digest = BCrypt::Password.new(self.password_digest)
    pw_digest.is_password?(pw)
  end

  def ensure_session_token_uniqueness
    while User.find_by(session_token: self.session_token)
      self.session_token = User.generate_session_token
    end
  end
end
