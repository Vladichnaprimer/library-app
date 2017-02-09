class Book < ApplicationRecord
	has_many :authorbooks
    has_many :authors, :through => :authorbooks
    belongs_to :category

    validates :name, :description, :format, :pages, :year, :publisher, presence: true

    validates :name, uniqueness: true
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\Z}i,
        message: "URL must be contain GIF, JPG or PNG!"
    }
end
