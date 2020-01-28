class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      # t.integer :employer_id
      t.string :title
      t.string :location
      t.string :category
      t.string :summary
      t.text :description
      t.integer :sal_range_low
      t.integer :sal_range_high
      t.boolean :active
      t.references :employer, foreign_key: true

      t.timestamps
    end
  end
end
