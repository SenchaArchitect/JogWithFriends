JogWithFriends
================================

A Sencha Touch 2 application that allows you to share jogging events with your facebook friends.  [Original example](http://docs.sencha.com/touch/2-1/#!/example/jog-with-friends)

Original author - Nick Poulden

Features:
- Templates/Template Functions
- Facebook API
- Controllers (References/Actions/Functions)
- Model
- Store


## Setting up JogWithFriends
This demo app shows off how to use Facebook with Sencha Touch. To see the app in action, visit:

http://ju.mp/senchajwf

This example uses the Facebook Javascript SDK on the client side, node.js for the server side and
MongoDB for the database.

In order to run this example app, you'll need to set up a Facebook application and deploy the app
to a public server. Below we outline how to do so using free accounts from Heroku and MongoLabs.

### Set up Heroku

We assume you're familiar with Git and have it installed.

  1. Visit http://www.heroku.com and sign up.
  2. Download the Heroku command line toolbelt from http://toolbelt.herokuapp.com/
  3. From your command line, type `heroku login` and enter your account details.
  4. Change to the server-side subdirectory of this example.
  5. Set up a git repository:

        $ git init

  6. Create a new app on Heroku:

        heroku create --stack cedar

    Note the URL of your live app.

### Set up Facebook

  1. Visit https://developers.facebook.com/apps and click the 'Create New App' button.
  2. Fill in the App Display Name and leave the Namespace field blank.
  3. Note the App ID and App Secret.
  4. In the 'Select how your app integrates with Facebook' section, click the 'Mobile Web' option
     and use the domain created for your app on Heroku.

### Set up MongoDB

  1. Visit https://mongolab.com and sign up.
  2. In the 'Databases' section, click 'Add'.
  3. Select the 'Free' plan on Amazon EC2, pick a database name, username and password.
  4. Click on your new database and note the connection URL. It should look something like this:

       mongodb://<user>:<password>@ds029807.mongolab.com:29807/<databaseName>

### Set up the Sencha Touch app

  1. Fill in your Facebook app ID in the `launch` function.
  2. Open `server-side/app.js` and fill in the config options at the top:

       - `redirect_uri`   The Heroku app URL
       - `client_id`      Your Facebook app ID
       - `client_secret`  Your Facebook app secret
       - `mongoDb`        Mongo connection URL from above
       - `sessionSecret`  A random string of characters for session encryption

### Running your app locally

To run the app locally, you must first update your Facebook app to point to localhost.

  1. Visit https://developers.facebook.com/apps and select your application.
  2. In the 'Select how your app integrates with Facebook' section, click the 'Mobile Web' option
     and set the domain to `http://localhost:3000`

Next we need to build our app, install the required node modules, and then run the app using [node.js](http://nodejs.org/download/).

  1. Run `build.sh`
  2. Change to the `server-side` directory
  3. Install all the required node modeles by running: `npm install`
  4. Run the app by typing: `node app.js`
  5. Visit your app by going to `http://localhost:3000`

### Deploying your app

  1. Run `build.sh`
  2. Change to the `server-side` directory
  3. Run the following git commands:

        $ git add .
        $ git commit -m "Initial commit"
        $ git push heroku master

  4. Visit your live Heroku URL from your mobile device or Webkit based browser.
