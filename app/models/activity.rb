class Activity < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
end
