class UserAppSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :job, :mini_cl, :created_at
end
