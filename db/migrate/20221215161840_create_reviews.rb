class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :star_rating
      t.integer :customer_id
      t.integer :restaurant_id  
    end

    def full_review
      return "#{restaurant.name} by #{customer.name}: #{self.star_rating} stars"
    end
    
  end
end
