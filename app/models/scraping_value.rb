class ScrapingValue < ApplicationRecord
  has_many :plots, dependent: :destroy
end
