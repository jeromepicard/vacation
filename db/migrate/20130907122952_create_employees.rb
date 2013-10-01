class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title
      t.date :start_date
      t.date :end_date
      t.references :company, index: true

      t.timestamps
    end
  end
end
