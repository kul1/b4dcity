== README
Deploy Heroku

<a href="https://heroku.com/deploy">
  <img src="https://www.herokucdn.com/deploy/button.svg" alt="Deploy">
</a>

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)


[![Deploy to Heroku](https://deploy-button.herokuapp.com/deploy.png)](https://heroku.com/deploy)

AWS for Heroku then get 

At Local Cli run or put in .profile 

 export S3_BUCKET_NAME=b4dcity-development 
 export AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ 
 export AWS_SECRET_ACCESS_KEY=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 
 export AWS_REGION=us-west-2


At terminal run config for heroku:

heroku config:set S3_BUCKET_NAME=b4dcity-production AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ AWS_SECRET_ACCESS_KEY=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 AWS_REGION=us-west-2

1. Create database for local eg: b4_development and put name in 
config/database.yml
	development:
  	<<: *default
  	database: b4_development

2. Create database for Heroku

  600  heroku addons:create heroku-postgresql

  604  heroku rake db:migration
  605  heroku run rake railties:install:migrations
  606  heroku run rake db:migrate
  609  heroku run rake db:seed
  611  heroku run rake spree_sample:load


3. logs

cd b4
  578  sublime .
  579  pwd
  580  ls
  581  bundle install
  582   export S3_BUCKET_NAME=b4dcity-development 
  583   export AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ 
  584   export AWS_SECRET_ACCESS_KEY=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 
  585   export AWS_REGION=us-west-2
  586  rails g spree:install --user_class=Spree::User
  587  heroku login
  588  heroku create b4city
  589  rails g spree:install --user_class=Spree::User
  590  rails g spree:install --user_class=Spree::User
  591  rails g spree:auth:install
  592  rails g spree_gateway:install
  593  rails s
  594  heroku config:set S3_BUCKET_NAME=b4dcity-production AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ AWS_SECRET_ACCESS_KEY=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 AWS_REGION=us-west-2
  595  git add .
  596  git commit -m"Initial"
  597  git push heroku master
  598  heroku addon pg
  599  4. heroku addons:create heroku-postgresql
  600  heroku addons:create heroku-postgresql
  601  git push heroku master
  602  heroku open
  603  heroku logs -t
  604  heroku rake db:migration
  605  heroku run rake railties:install:migrations
  606  heroku run rake db:migrate
  607  heroku open
  608  run rake db:seed
  609  heroku run rake db:seed
  610  rake spree_sample:load
  611  heroku run rake spree_sample:load
  612  heroku open
  613  history

Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
