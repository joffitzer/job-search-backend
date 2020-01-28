class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :location, :category, :summary, :description, :sal_range_low, :sal_range_high, :employer
end

# t.integer :employer_id
# t.string :title
# t.string :location
# t.string :category
# t.string :summary
# t.text :description
# t.integer :sal_range_low
# t.integer :sal_range_high
# t.boolean :active