class Article < ApplicationRecord
  belongs_to :user
  belongs_to :subpage
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags
end
