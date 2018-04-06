# Object Relations Assessment

## Your Task

For this challenge, we'll be building out Netflix! A Viewer has many Movies through QueueItem. A Movie can appear on many Viewer's queues. A Viewer can rate a Movie, marking their rating on the QueueItem.

As always, make sure to sketch out your domain and think about the single source of truth for your data.

## Notes

Your goal is to build out all of the methods listed in the deliverables. Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb`. You'll be able to test out the methods that you write here.

**To Submit** - once you've completed all the deliverables, please copy/paste your three class definitions into the `solution.rb` file. Please don't submit the lab until we give you the signal.

## Deliverables

Implement all of the methods described below

### VIEWER

* Viewer.all
  * returns all of the viewers
* Viewer#queue
  * this method should return an array of Movie instances in the Viewer's queue.
* Viewer#add_movie
  * this method should receive a Movie instance and add it to the Viewer's queue
* Viewer#add_movies
  * this method should receive an array of Movie instances and add each one to the Viewer's queue
* Viewer#rate_movie(movie, rating)
  * given a movie and a rating (a number between 1 and 5), assign the rating to the viewer's QueueItem for that movie. If the movie is not already in the viewer's queue, add a new QueueItem with the viewer, movie, and rating.

### QueueItem

_A QueueItem object represents that an individual user has added a particular movie to their queue, and possibly rated it. **It is not the full Queue, but a single QueueItem.**_

* QueueItem.all
  * returns and array of all QueueItems
* QueueItem#viewer
  * returns the viewer associated with this QueueItem
* QueueItem#movie
  * returns the movie associated with this QueueItem
* QueueItem#rating
  * returns the viewer's rating for the movie associated with this QueueItem. If the viewer has not yet rated this movie, calling QueueItem#rating should return `nil`

### MOVIE

* Movie.all
  * returns an array of all Movies
* Movie#queue_items
  * returns an array of all the queue_item objects that contain that movie
* Movie#viewers
  * returns an array of all of the viewers with this movie on their queue
* Movie#ratings
  * returns an array of all the ratings for this movie
* Movie#average_rating
  * returns the average of all ratings for this movie
* Movie.highest_rated
  * returns the movie with the highest average rating
