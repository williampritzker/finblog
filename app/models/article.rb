class Article < ApplicationRecord
  belongs_to :user
  has_many :articletags
  belongs_to :subpage
  has_many :tags, through: :articletags
end
