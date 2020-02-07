class EmployerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :logo, :industry, :jobs, :email, :password
  # has_many :jobs
end