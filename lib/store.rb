class Store < ActiveRecord::Base
    has_many :employees

    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { 
        only_integer: true,
        greater_than_or_equal_to: 0
    }
    validates :mens_apparel, inclusion: { in: [true, false] }
    validates :womens_apparel, inclusion: { in: [true, false] }

    validate :carry_mens_or_womens

    private
    def carry_mens_or_womens
        if mens_apparel == false && womens_apparel == false
            errors.add(:mens_apparel, "store must carry either men's or women's apparel")
            errors.add(:womens_apparel, "store must carry either men's or women's apparel")
        end
    end

end
