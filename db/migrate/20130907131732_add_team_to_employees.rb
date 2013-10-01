class AddTeamToEmployees < ActiveRecord::Migration
  def change
    add_reference :employees, :team, index: true
  end
end
