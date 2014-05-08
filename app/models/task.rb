class Task < ActiveRecord::Base
  belongs_to :team

  enum status: [:active , :archived]

  validates_presence_of :name
  validates_presence_of :status

end
