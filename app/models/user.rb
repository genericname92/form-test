# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  session_token   :string
#

class User < ApplicationRecord
  validates :username, :session_token, presence: true
  # let's not bother validating passwords for an mvp
  # validates :password, length: { minimum: 5, allow_nil: true }
  validates :username, uniqueness: true
  attr_reader :password
  after_initialize :ensure_session_token

  def self.find_by_credentials(user_params)
    user = User.find_by_username(user_params[:username])
    user.try(:is_password?, user_params[:password]) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  protected

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end
end
