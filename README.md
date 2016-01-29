# Fwitter Project - Database

This iteration of Fwitter focuses on setting up a SQL database to store tweets. We are using the gem ActiveRecord to handle our database connections. This gem allows us to write ruby code to read and write to our database.

+ `Gemfile`
  * We had to update our Gemfile because we're using database:
    * ActiveRecord
    * Sinatra-ActiveRecord
    * Rake
    * Tux
    * sqlite3

+ `config/environment.rb`:
  * This file sets up the database and the connects to a hidden database file called `database.rb`.

+ `tweet.rb`:
  * We need to modify our model to be set up for a database
  * The Tweet class needs to inherit from `ActiveRecord::Base`
+ Migrations:
  * In order to set up a table in a database to store our tweets (a Tweets table), we need to create a migration by running in terminal: `rake db:create_migration NAME=create_tweets`
  * Running that command in terminal automatically creates a directory called `db`, inside of that, a `migrate` directory, and inside of that, a file with a really long series of numbers
  * This file is a migration. Inside it contains two methods `up` and `down`. The `up` method creates the table in the database and the down method deletes that table.
  * Run the migration by entering in terminal: `rake db:migrate`

+ `application_controller.rb`:
  * Next we need to modify our controller action that handles the post request from the form
  * We need to actually save the new tweets to database by called `tweet.save`


<p data-visibility='hidden'>View <a href='https://learn.co/lessons/hs-fwitter-3-databases' title='Fwitter Project - Database'>Fwitter Project - Database</a> on Learn.co and start learning to code for free.</p>
