
namespace :day do
  desc 'create a new instance of Day every day'
  task :create => [ :environment ] do
    Day.create()
    Day.test_cron
  end

end
