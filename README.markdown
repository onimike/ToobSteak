###http://toobsteak.heroku.com/

####Commit notes: (Apr 15 3:20p.m. - Mike Romain)
#####I had to fix some stuff with the shows to make it work on heroku, so whenever you make database changes, remember to:
+ heroku rake db:migrate (do this after pushing to heroku)

#####Regarding images:
+ I can't get images to display properly. If you go to a shows page from a link, or after creating, you can see a broken image at the bottom,
+ If you right click, copy the image url, and go to that URL in your browser, an image loads perfectly fine. 
+ Now go back to the shows page on Heroku, and the image pops up. Why? I don't know. I have no idea how to fix this.
+ Displaying the image is in app/views/shows/show.html.erb


#### CPSC473 Spring 2012
##### Team 1 - require 'rails'

+ Aleksey Bukin
+ Iris Markofsky
+ Michael Robertson
+ Michael Romain
+ Yuta Takayama