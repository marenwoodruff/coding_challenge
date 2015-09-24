class Restaurant < ActiveRecord::Base
    has_many :reviews, dependent: :destroy

    validates :name, presence: true, length: { maximum: 70 }
    validates :address, presence: true, length: { maximum: 300 }
    validates :phone, presence: true, length: {is: 12}

    def suggestion
        choice_array = Restaurant.all
        suggest = choice_array.sort_by { |x| [x.updated_at, x.reviews] }.shuffle
        # if suggest[0].name == Restaurant.last.updated_at
        #     suggest[0].pop
        #     suggest = choice_array.sort_by { |x| [x.updated_at, x.reviews] }.shuffle
        # else 
            suggest = suggest[1]
        # end    
    end
end


