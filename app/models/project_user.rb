class ProjectUser < ApplicationRecord
  belongs_to :organization
  belongs_to :user
end
