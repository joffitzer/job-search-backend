class UserAppSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :mini_cl, :created_at
  attribute :job do |user_app|
    {job: user_app.job, employer: user_app.job.employer}
  end 
end
