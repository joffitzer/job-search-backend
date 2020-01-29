class CreatePortfolioItems < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.text :blurb
      t.string :git_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
