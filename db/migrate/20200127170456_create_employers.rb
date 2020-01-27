class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|
      t.string :name
      t.string :description
      t.string :logo
      t.string :industry

      t.timestamps
    end
  end
end
