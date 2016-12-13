# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :b4set do 
 	# puts "db:migrate"
 		Rake::Task["db:migrate"].invoke
 	# puts "db:seed"
 	    ENV['AUTO_ACCEPT'] = '1'
 	 	Rake::Task["db:seed"].invoke
 	 	#Rake::Task["spree_sample:load"].invoke
 	end