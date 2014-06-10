namespace :eye do
  task :load do
    on release_roles(:app) do
      within(release_path) do
        execute :eye, :load, fetch(:eye_config)
      end
    end
  end

  %w(start stop restart info).each do |cmd|
    task cmd.to_sym do
      on roles(:app) do
        execute :eye, cmd.to_sym, fetch(:eye_application)
      end
    end
  end

  before :start, :load
  before :restart, :load
end

namespace :load do
  task :defaults do
    set :eye_config, fetch(:eye_config, "./config/#{fetch(:application)}.eye")
    set :eye_application, fetch(:eye_application, fetch(:application))
  end
end
