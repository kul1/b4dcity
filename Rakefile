# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :b4set do 
 	puts "db:reset"
 	puts "ENV['AUTO_ACCEPT']: #{ENV['AUTO_ACCEPT']}"
 		Rake::Task["db:reset"].invoke
 	# puts "db:seed"
 	# 	Rake::Task["db:seed"].invoke
 	end