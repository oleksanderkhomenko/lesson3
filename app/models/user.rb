class User < ApplicationRecord
  include Gravtastic
  gravtastic
  validates :name, presence: { message: 'should be defined' }
  validates :email, presence: { message: 'should be defined' }, uniqueness: {message: 'should be unique!'}
  has_many :messages, dependent: :nullify
  has_many :votes
  has_secure_token

  has_secure_password
end
