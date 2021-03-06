class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.boolean :status
      t.datetime :completed_date

      t.timestamps
    end
  end
end
