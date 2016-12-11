== README.md

## How to deploy Spree on Heroku
(You may first try use my default sample bucket, aws Access Key and Secret Access Key in Menu or follow detail link to learn more.)

1. Make sure you have the [Heroku Toolbelt](https://toolbelt.heroku.com) installed.

2. Go get [![Your Access Key ID and Secret Access Key]](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSGettingStartedGuide/AWSCredentials.html) for your production and [![a Bucket]](http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html) or keep enter using sample default.

3. Click this button, and follow the instructions :point_right: [![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

4. After you have an instance running on Heroku, run these commands in your terminal.



## To Update from local

```
heroku git:clone -a <your-app-name>
cd <your-app-name>
heroku run rake spree_auth:admin:create
heroku run rake db:seed
```
##To add sample

```
heroku run rake spree_sample:load
```
## To re-create admin user
```
heroku run rake spree_auth:admin:create
```

You can now log into your Spree installation using the initial user account (username: `spree@example.com`,  password: `spree123`).


##To create local

After deploying your own Spree, you can update it by running the following commands:
```
heroku git:clone --app YOURAPPNAME && cd YOURAPPNAME #if you not clone yet
git remote add github https://github.com/kul1/b4dcity
git pull origin master 
git push heroku master
```

This will pull down the code that was deployed to Heroku so you have it locally, attach this repository as a new remote, attempt to pull down the latest version and merge it in, and then push that change back to your Heroku app instance.


At Local Cli run or put S3 in .profile 


```
export S3_BUCKET_NAME=spreesample-development 
export AWS_ACCESS_KEY_ID=AKIAINQY2COMIQXWQ3JQ 
export AWS_SECRET_ACCESS_KEY=jOSmKgkAG3JGeZRQ4Udc+JZGCoAoFStLekV235BF 
export AWS_REGION=us-west-2
```

##Modify Spree

##Change logo
1. Add logo.png in app/assets/images/logo.png 
2. Add logo.png in app/assets/images/admin/logo.png 
##Insert in config/initializers/spree.rb
```
    config.logo = "logo.png"
    config.admin_interface_logo = "logo.png"
```

```
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
  config.logo = "logo.png"
  config.admin_interface_logo = "logo.png"
end
```
##Modify custom.scss
~/app/vendor/assets/stylesheets/spree/frontend/custom.scss

    1. Open Chrome go to pages to modify
    2. Click inspect Element and copy need style format 
    3. Add to custom.scss in vendor/asset/stylesheets/frontend/custom.scss

```
.header_phone{
	position: absolute;
	top: 0;
	right: 8px;
	font-weight: bold;
	font-size: 14px;
	padding-bottom: 10px;
	color: white;
}
.panel-default {
    border-color: #45b92d;
}
```

##Modify Page Content (View)
Create files in overrides e.g.: update_headers
```
       Deface::Override.new(virtual_path: 'spree/shared/_nav_bar',     
              name: 'remove-search-bar',      
              remove: '#search-bar')  
```




