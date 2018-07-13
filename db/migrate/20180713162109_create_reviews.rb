class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review
      t.integer :rating
      t.references :user, foreign_key: true
    end
  end
end
