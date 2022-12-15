class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :id
    end

    def full_name
      return self.first_name + self.last_name
    end

    def favorite_restaurant
      return self.restaurant.all.max_by { |c| c.star_rating}
    end

    def add_review(restaurant, rating)
      return newRating = restaurant.id + review.star_rating
    end

    def delete_reviews(restaurant)
      return restaurant.review.destroy
    end

  end
end
