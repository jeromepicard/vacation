class Team < ActiveRecord::Base
  has_many :members, class_name: "Employee"
  belongs_to :company
  
  has_and_belongs_to_many :managers, class_name: "Employee", join_table: "teams_managers", order: "level"
  
  accepts_nested_attributes_for :members, :managers
end
