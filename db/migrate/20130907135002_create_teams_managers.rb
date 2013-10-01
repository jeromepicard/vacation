class CreateTeamsManagers < ActiveRecord::Migration
  def change
    create_table :teams_managers do |t|
      t.references :team, index: true
      t.references :employee, index: true
      t.integer :level
    end
  end
end
