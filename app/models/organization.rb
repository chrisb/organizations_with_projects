class Organization < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :organization_users
  has_many :users, through: :organization_users
  has_many :projects
end
