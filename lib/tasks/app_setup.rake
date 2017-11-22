namespace :app do
  task :setup do
    Rake::Task['db:seed'].invoke
  end
end