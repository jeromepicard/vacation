class Employee < ActiveRecord::Base
  belongs_to :company
  belongs_to :team
  
  has_and_belongs_to_many :managed_teams, class_name: "Team", join_table: "teams_managers"
  
  def full_name
    "#{first_name} #{last_name}" 
  end
end
