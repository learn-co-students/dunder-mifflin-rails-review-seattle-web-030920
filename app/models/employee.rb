class Employee < ApplicationRecord
    belongs_to :dog
    validates :img_url, presence: true

    def to_s
        self.first_name + " " + self.last_name
    end

end
