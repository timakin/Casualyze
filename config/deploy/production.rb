role :app, %w{ec2-user@Casualyze}
role :web, %w{ec2-user@Casualyze}
role :db,  %w{ec2-user@Casualyze}
 
set :stage, :production
set :rails_env, :production