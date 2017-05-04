class Donation < ActiveRecord::Base
  belongs_to :user
  belongs_to :child
  belongs_to :school
end
