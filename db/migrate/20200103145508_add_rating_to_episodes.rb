class AddRatingToEpisodes < ActiveRecord::Migration[5.1]
  def change
    add_column :episodes, :rating, :string
  end
end
