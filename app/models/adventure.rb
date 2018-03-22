class Adventure < ApplicationRecord
  validates :title, :location, :description, :date
end
