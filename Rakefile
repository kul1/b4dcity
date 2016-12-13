# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :b4set do 
 	puts "db:migrate"
 		Rake::Task["db:migrate"].invoke(ENV['AUTO_ACCEPT'] == true)
 	#puts "spree_sample:load"
 		# Rake::Task["spree_sample:load"].invoke
 end