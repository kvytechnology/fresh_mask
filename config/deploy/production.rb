server '45.32.114.167', user: 'deploy', roles: %w{app db web}

namespace :deploy do
  desc 'Source bash'
  task :source do
    on roles(:app), in: :sequence, wait: 5 do
      execute "source ~/.bashrc"
    end
  end
  after :log_revision, :source
end
