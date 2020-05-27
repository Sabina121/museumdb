class Artifact < ApplicationRecord

    validates :name, presence: true, length: {minimum: 5}

    has_one_attached :image

    def self.search(search)
        where("name LIKE ? OR inventory_number LIKE ? OR museum_name LIKE ? OR collection LIKE ? OR era LIKE ? OR creator LIKE ? OR owner LIKE ? OR acquisition LIKE ? OR revision_date LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
    end
end
