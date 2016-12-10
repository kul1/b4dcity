== README.md

## How to deploy Spree on Heroku

1.  Click this button, and follow the instructions :point_right: [![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)
2. Make sure you have the [Heroku Toolbelt](https://toolbelt.heroku.com) installed.
3. After you have an instance running on Heroku, run these commands in your terminal.

##Updating

After deploying your own Spree, you can update it by running the following commands:
```
heroku git:clone --app YOURAPPNAME && cd YOURAPPNAME
git remote add github https://github.com/kul1/b4dcity
git pull origin master 
git push heroku master
``
## To Update from local
```
heroku git:clone -a <your-app-name>
cd <your-app-name>
heroku run rake spree_auth:admin:create
heroku run db:seed
```
##To add sample

```
heroku run rake spree_sample:load
```

You can now log into your Spree installation using the initial user account (username: `spree@example.com`,  password: `spree123`).


`

This will pull down the code that was deployed to Heroku so you have it locally, attach this repository as a new remote, attempt to pull down the latest version and merge it in, and then push that change back to your Heroku app instance.


At Local Cli run or put in .profile 

```
export S3_BUCKET_NAME=b4dcity-development 
export AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ 
export AWS_SECRET_ACCESS_KEY=ByfNVq7h9Qcdg6L5ej2dHebbto0Wt9bGkpf1efym 
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




