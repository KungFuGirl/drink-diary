namespace :db do
  desc "db:reset is broken, this does what that tries to do. Drop, create, migrate and seed."
  task rebuild: :environment do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end

end
