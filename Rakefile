# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

# require_relative "config/application"

# Rails.application.load_tasks

require_relative "config/application"

Rails.application.load_tasks

task :server do
    exec "rerun -b 'rackup config.ru -p 8000'" # rerun is a gem that restarts the server when you make changes to your code
  end