require 'fileutils'
namespace :backup do
  # For taking log backup
  # Run with: rake backup:log:all
  # This will take a backup of log, and clear the current log file’s contents.
  desc 'backup log'
  namespace :log do
   desc 'rake backup:log:all'
       task :all do
        backup_path = File.join(Rails.root, "backup", 'log', "#{Date.today.month}")
        FileUtils.mkdir_p(backup_path) unless File.exist?(backup_path)
        filename = File.join(backup_path, "log_#{Time.now.strftime('%Y%m%d')}.tar.gz")
        cmd = "tar -czvf #{filename} log/*.log"
        system "#{cmd}"
        Rake::Task["log:clear"].invoke if File.size?(filename)
       end
  end

  # For taking db backup -start
  # Run with: rake backup:db:mysql
  # All the backups will be stored in a folder named “backup” which will be available at the root path of the app.
  desc "backup db"
   namespace :db do
     desc "rake backup:db:mysql"
     task :mysql => :environment do
        backup_path = File.join(Rails.root, "backup", "db", "#{Date.today.year}-#{Date.today.month}")
        FileUtils.mkdir_p(backup_path) unless File.exist?(backup_path)
        tmp_filename = File.join(Rails.root, "backup", "db", "tmp.sql")
        filename = File.join(backup_path, "db_#{Rails.env}_#{Time.now.strftime('%Y%m%d%H%M%S')}.tar.gz")
        db_options = YAML.load_file(File.join(Rails.root, "config", "database.yml"))[Rails.env].symbolize_keys
        cmd = <<-CMD
        mysqldump -u \"#{db_options[:username]}\" -p#{db_options[:password]} --default-character-set=utf8 --opt --extended-insert=false  --triggers -R --hex-blob --single-transaction #{db_options[:database]} > #{tmp_filename} ; tar -czvf #{filename} backup/db/tmp.sql
        CMD
        system "#{cmd}"
     end
  end
end

