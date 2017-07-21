# Object Relations Assessment

For this assignment, we'll be building out Netflix! A viewer has many movies on their watchlist and can give them ratings. Movies can appear on many watchlists. Each movie only has one genre for this exercise

As always, make sure to sketch out your domain and think about the single source of truth for your data.

## Topics

+ Classes vs Instances
+ Variable Scope ( Class, Instance, Local )
+ Object Relationships
+ Arrays and Array Methods
+ Class Methods

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

## Deliverables

### VIEWER
*Attributes:* name

*Methods:*
+ Viewer.all
  + returns all of the viewers
+ Viewer#watchlist
  + returns the movies on viewer's watchlist
+ Viewer#create_or_edit_rating
  + given a movie, create a rating or edit its current rating on the viewer's watchlist
+ Viewer#add_to_watchlist
  + given one or more movies, add them to the viewer's watchlist

###GENRE
*Attributes:* name

*Methods:*
+ Genre.all
  + returns all genres
+ Genre#movies
  + returns all movies in genre
+ Genre#most_watched
  + returns the genre with the most amount of watched movies (movies that belong to a watchlist across viewers)

###WATCHLIST
*Attributes:* movie, viewer, rating

*Methods:*
+ Watchlist.all
  + returns all of the ratings
+ Watchlist#viewer
  + returns the viewer for that given rating
+ Watchlist#movie
  + returns the movie for that given rating
+ Watchlist#rating
  + returns the viewer's rating for the movie

###MOVIE
*Attributes:* title, genre

*Methods:*
+ Movie.all
  + returns an array of all movies
+ Movie.highest_rated
  + should return the movie with the highest average rating across viewers
+ Movie.mass_assign_genre
  + given an array of movie titles and a genre name, should assign the genre to each movie
+ Movie#viewers
  + returns all of the viewers who added this movie to their watchlist
+ Movie#average_rating
  + returns the average of all ratings across viewers
