lock '3.4.0'

set :application, 'restcookbook'

set :scm, :git
set :repo_url, 'https://github.com/restcookbook/restcookbook.git'
set :branch, "master"

set :format, :pretty
set :log_level, :debug

set :keep_releases, 5

set :port, 22
set :deploy_to, '/home/noxlogic/domains/rest-cookbook.com/site'
set :use_sudo, false

namespace :deploy do
    task :build_jekyll do
        on roles(:app) do
            within "#{deploy_to}/current" do
                execute :jekyll, "build"
            end
        end
    end
end

after "deploy:symlink:release", "deploy:build_jekyll"
