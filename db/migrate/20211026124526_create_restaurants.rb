class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :price
      t.integer :id
    end

    def Restaurant.fanciest
      return restaurant.all.max_by { |p| p.price }
    end

    def all_reviews
      return 
      [
        "Review for #{restaurant.name} by #{customer.name}: #{review.star_rating} stars.",
        "Review for #{restaurant.name} by #{customer.name}: #{review.star_rating} stars."
      ]
    end
    
  end
end
