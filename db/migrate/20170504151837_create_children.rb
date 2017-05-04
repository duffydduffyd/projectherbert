class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.datetime :birthdate
      t.references :school

      t.timestamps
    end
  end
end
