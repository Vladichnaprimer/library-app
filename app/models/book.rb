class Book < ApplicationRecord
	has_many :authorbooks
    has_many :authors, :through => :authorbooks
    belongs_to :category
    
    validates :name, presence: true
end
