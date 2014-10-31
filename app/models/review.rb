class Review < ActiveRecord::Base
    belongs_to :restaurant

    validates :rating, presence: true
    validates :first_name, presence: true, length: {maximum: 50}
    validates :comment, presence: true, length: { maximum: 300 }

    def full_name
        "#{first_name} #{last_name}"
    end
end
