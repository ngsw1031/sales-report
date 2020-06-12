class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :report_name
      t.string :company
      t.string :proposal_amount
      t.string :result_amout
      t.date :date
      t.text :proposal_content
      t.text :result_content
      t.references :team, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
