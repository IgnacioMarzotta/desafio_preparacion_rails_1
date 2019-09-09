class AddboolfavouriteToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :favourite, :boolean
  end
end
