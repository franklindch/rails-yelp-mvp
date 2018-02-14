class ChangeStarsToRatingInReviews < ActiveRecord::Migration[5.1]
  def change
    rename_column :reviews, :stars, :rating
  end
endœ
