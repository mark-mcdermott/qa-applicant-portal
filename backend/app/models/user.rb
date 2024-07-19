class User < ApplicationRecord
  belongs_to :role, foreign_key: :role, primary_key: :name
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
end
