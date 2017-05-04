class School < ActiveRecord::Base
  has_many :children
  has_many :donations
end
