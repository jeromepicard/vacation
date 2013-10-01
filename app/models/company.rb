class Company < ActiveRecord::Base
  validates_presence_of :name, :site_path
  validates_uniqueness_of :site_path
  
  has_many :employees
  has_many :teams
end
