class RemoveOrderFromEpisodes < ActiveRecord::Migration
  def change
    remove_column :episodes, :order, :integer
  end
end
