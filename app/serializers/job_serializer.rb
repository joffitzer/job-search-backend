class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :location, :category, :summary, :description, :sal_range_low, :sal_range_high, :active, :employer
  # belongs_to :employer
end