class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    def blogger_name
        self.blogger ? self.blogger.name : nil  
    end 

    def blogger_name=(name)
        self.blogger = Blogger.find_or_create_by(name: name)
    end 

    def destination_name
        self.destination ? self.destination.name : nil  
    end 

    def destination_name=(name)
        self.destination = Destination.find_or_create_by(name: name)
    end 
end
