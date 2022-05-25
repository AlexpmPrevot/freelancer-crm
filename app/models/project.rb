class Project < ApplicationRecord
  belongs_to :client

  validates :name, presence: true
end
