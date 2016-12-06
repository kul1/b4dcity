== README

## How to deploy Spree on Heroku

1.  Click this button, and follow the instructions :point_right: [![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
2. Make sure you have the [Heroku Toolbelt](https://toolbelt.heroku.com) installed.
3. After you have an instance running on Heroku, run these commands in your terminal.

```
heroku git:clone -a <your-app-name>
cd <your-app-name>
heroku run rake spree_auth:admin:create
heroku run rake spree_sample:load
```

You can now log into your Spree installation using the initial user account (username: `spree@example.com`,  password: `spree123`).



At Local Cli run or put in .profile 

 export S3_BUCKET_NAME=b4dcity-development 
 export AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ 
 export AWS_SECRET_ACCESS_KEY=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 
 export AWS_REGION=us-west-2



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
