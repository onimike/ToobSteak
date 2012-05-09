###http://toobsteak.heroku.com/
#### CPSC473 Spring 2012
##### Team 1 - require 'rails'

+ Aleksey Bukin
+ Iris Markofsky
+ Michael Robertson
+ Michael Romain
+ Yuta Takayama

#### Links:
+ tvdb_party gem: https://github.com/maddox/tvdb_party
+ tvdb_party documentation: http://rubydoc.info/gems/tvdb_party/0.6.2/frames
+ delayed_job gem: https://github.com/collectiveidea/delayed_job

#####Commit notes: (May 8 11ish p.m. - Mike Romain) - PUSHED TO HEROKU
######Search Functionality (for Rails Tutorial Project)
+ Changes:
+ Added new routes to routes.rb
+ Added a search link to application.html.erb
+ Added a search function to shows_controller.rb
+ New files: /app/views/shows search.html.erb and noresult.html.erb

If you have ideas to make it better, please let me know or by all means
make some changes.

#####Commit notes: (Apr 16 2:30a.m. - Mike Romain)
######Figured out Delayed_Job Gem
+ So Delayed_Job is a gem that allows us to run a process in the
background. In the case of our app, it would be populating the shows
database with complete values so it takes less time, therefore reducing
timeouts.

+ However, you need a "worker" to do this, which Heroku charges for. The
easy way out is to do "heroku rake jobs:work" and your machine will act
as worker, but as soon as you exit jobs:work or close your terminal, it
will stop doing it.

+ Solution? Either deal with timeouts, pay for heroku, or have a PC
running rake jobs:work during our presentation.


#####Commit notes: (Apr 15 3:20p.m. - Mike Romain)
######I had to fix some stuff with the shows to make it work on heroku, so whenever you make database changes, remember to:
+ heroku rake db:migrate (do this after pushing to heroku), and if that doesn't fix it, do:
+ heroku rake db:reset

######Regarding images:
+ I can't get images to display properly. If you go to a shows page from a link, or after creating, you can see a broken image at the bottom,
+ If you right click, copy the image url, and go to that URL in your browser, an image loads perfectly fine. 
+ Now go back to the shows page on Heroku, and the image pops up. Why? I don't know. I have no idea how to fix this.
+ Displaying the image is in app/views/shows/show.html.erb

######To Do for Shows:
+ Find some way to get showtimes. We might just have to hardcode these
+ Add some flag in the database to check if the show is 'on now', compare with current time v.s. show time?
+ There are columns in the show database for number of followers and microposts already, these can be updated in the microposts/users controllers respectively

######To Do for everything else:
+ CSS with nav bar for every page (there's actually content to style now!)
+ Microposts
+ Searching (by show name and user name? should be easy that way)
+ User profile (to display their microposts and shows)
+ User following (allow users to follow or favorite shows)
