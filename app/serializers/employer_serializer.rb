class EmployerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :logo, :industry, :jobs
  # has_many :jobs
end