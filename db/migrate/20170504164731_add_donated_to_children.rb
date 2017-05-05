class AddDonatedToChildren < ActiveRecord::Migration
  def change
    add_column :children, :donated, :boolean, :default => false
  end
end
