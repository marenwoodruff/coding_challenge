class Review < ActiveRecord::Base
    belongs_to :restaurant

    def full_name
        "#{first_name} #{last_name}"
    end
end
