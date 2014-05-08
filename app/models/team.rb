class Team < ActiveRecord::Base
  has_many :tasks, :dependent => :destroy
  has_many :mutants

  accepts_nested_attributes_for :tasks, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :mutants, :reject_if => :all_blank, :allow_destroy => true

  validates_presence_of :name
  validates_presence_of :description


end
