class Authorbook < ApplicationRecord

	belongs_to :book
	belongs_to :author


    def author
         Author.all
    end
end
