class CreateUserApps < ActiveRecord::Migration[6.0]
  def change
    create_table :user_apps do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.text :mini_cl

      t.timestamps
    end
  end
end
