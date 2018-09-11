class Artwork < ApplicationRecord
  validates :title, presence: true, uniqueness: { scope: :artist_id }
  validates :image_url, :artist_id, presence: true 
  
  belongs_to :artist,
  primary_key: :id,
  foreign_key: :artist_id,
  class_name: :User
  
  has_many :artwork_shares, 
  primary_key: :id, 
  foreign_key: :artwork_id, 
  class_name: :ArtworkShares,
  dependent: :destroy
  
  has_many :shared_viewers, 
  through: :artwork_shares, 
  source: :viewer,
  dependent: :destroy
end