class AddCompanyToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :add, :string
    add_reference :teams, :company, index: true
  end
end
