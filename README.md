# Object Relations Assessment

## Your Task

For this challenge, we'll be building out Netflix! A Viewer has many movies on their Watchlist. A Movie can appear on many Viewer's Watchlists.  A Viewer can assign a rating to a movie on their Watchlist.

As always, make sure to sketch out your domain and think about the single source of truth for your data.

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

## Deliverables

Implement all of the methods described below

### VIEWER

+ Viewer.all
  + returns all of the viewers
+ Viewer#add_to_watchlist(movies)
  + this method should receive an array of one or more movie instances and add them to the viewer's watchlist
+ Viewer#rate_movie(movie, rating)
  + given a movie on a viewer's watchlist and a rating (a number between 1 and 5), assign the rating to the movie. Where should the rating that an individual viewer gives to an individual movie be stored?

### WATCHLIST

+ Watchlist.all
  + returns all of the ratings
+ Watchlist#viewer
  + returns the viewer associated with this watchlist
+ Watchlist#movie
  + returns the movie associated with this watchlist
+ Watchlist#rating
  + returns the viewer's rating for the movie associated with this watchlist

### MOVIE

+ Movie.all
  + returns an array of all movies
+ Movie#watchlists
  + returns an array of all the watchlist objects that contain that movie
+ Movie#viewers
  + returns all of the viewers who added this movie to their watchlist
+ Movie#average_rating
  + returns the average of all ratings across all viewers watchlist ratings
+ Movie.highest_rated
  + should return the movie with the highest average rating across all the viewers watchlists
