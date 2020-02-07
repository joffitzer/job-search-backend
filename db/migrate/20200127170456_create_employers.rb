class CreateEmployers < ActiveRecord::Migration[6.0]
  def change
    create_table :employers do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :description
      t.string :logo
      t.string :industry

      t.timestamps
    end
  end
end
