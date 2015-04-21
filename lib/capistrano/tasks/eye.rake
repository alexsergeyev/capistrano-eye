namespace :eye do
  task :load do
    on roles(fetch(:eye_roles)) do
      with fetch(:eye_env) do
        within(release_path) do
          execute :eye, :load, fetch(:eye_config)
        end
      end
    end
  end

  %i(start stop restart info).each do |cmd|
    task cmd do
      on roles(fetch(:eye_roles)) do
        with fetch(:eye_env) do
          execute :eye, cmd, fetch(:eye_application)
        end
      end
    end
  end

  before :start, :load
  before :restart, :load
end

namespace :load do
  task :defaults do
    set :eye_roles, :app
    set :eye_env, -> { {rails_env: fetch(:stage)} }
    set :eye_application, -> { fetch(:application) }
    set :eye_config, -> { "./config/#{fetch(:application)}.eye" }
  end
end

after 'deploy:publishing', 'eye:restart'
