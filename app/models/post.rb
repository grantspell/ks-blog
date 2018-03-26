class Post < ApplicationRecord

    before_validation :sanitize, :slugify

    def slugify
        self.slug = self.title.downcase.gsub(" ","-")
    end

    def sanitize
        self.title = self.title.strip
    end
    
end
