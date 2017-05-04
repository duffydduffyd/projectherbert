class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :user
      t.references :child
      t.references :school

      t.timestamps
    end
  end
end
