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

    before_destroy :check_if_empty

    private
    def carry_mens_or_womens
        if mens_apparel == false && womens_apparel == false
            errors.add(:mens_apparel, "store must carry either men's or women's apparel")
            errors.add(:womens_apparel, "store must carry either men's or women's apparel")
        end
    end

    def check_if_empty
        if self.employees.size > 0
            puts "Could not destroy store :)"
            throw :abort
        else
            puts "Store destroyed"
            return true
        end
    end

end
