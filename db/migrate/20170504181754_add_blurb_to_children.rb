class AddBlurbToChildren < ActiveRecord::Migration
  def change
    add_column :children, :blurb, :text
  end
end
