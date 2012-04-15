###http://toobsteak.heroku.com/

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

#### CPSC473 Spring 2012
##### Team 1 - require 'rails'

+ Aleksey Bukin
+ Iris Markofsky
+ Michael Robertson
+ Michael Romain
+ Yuta Takayama