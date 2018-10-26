class Subpage < ApplicationRecord
  has_many :articles
  belongs_to :page
end
