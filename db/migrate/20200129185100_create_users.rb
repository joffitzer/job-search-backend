class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :bootcamp
      t.string :category
      t.integer :grad_month
      t.integer :grad_year
      t.string :password_digest

      t.timestamps
    end
  end
end
