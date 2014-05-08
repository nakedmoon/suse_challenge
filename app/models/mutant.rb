class Mutant < ActiveRecord::Base
  belongs_to :team

  validates_presence_of :name
  validates_presence_of :country
end
