class Tag < ApplicationRecord
  has_many :articles, through: :articletags
end
