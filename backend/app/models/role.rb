class Role < ApplicationRecord
  has_many :users, foreign_key: :role, primary_key: :name
end