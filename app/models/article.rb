class Article < ApplicationRecord
    
    # Ensure all articles have a title that is at least 5 characters long
    validates :title, presence: true, length: { minimum: 5 }
end
