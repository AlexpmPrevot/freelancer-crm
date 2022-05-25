class Client < ApplicationRecord
  belongs_to :user
  has_many :project

  validates :name, :address, presence: true
end
