class Restaurant < ActiveRecord::Base
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    validates :name, presence: true, length: { maximum: 70 }
    validates :address, presence: true, length: { maximum: 300 }
    validates :phone, presence: true, length: {is: 12}

    def suggest
        choice_array = Restaurant.all
        choice_array = choice_array.shuffle.sort_by { |x| [x.updated_at, x.reviews] }
        choice_array = choice_array.first
    end
end
