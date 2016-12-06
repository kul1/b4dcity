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

```
    export S3_BUCKET_NAME=b4dcity-development 
    export AWS_ACCESS_KEY_ID=AKIAISPR3Z4PQNE44TJQ 
    export AWS_SECRET_ACCESS_KEY=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 
    export AWS_REGION=us-west-2
```

