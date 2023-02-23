class Movie < ActiveRecord::Base

    # create a new movie instance with the given title
    # save the movie to the database
    # return the movie instance
    def self.create_with_title(title)
        movie = self.new(title: title) 
        movie.save 
        movie 
    end
    # first_movie
    def self.first_movie
        self.first
    end
    # last_movie
    def self.last_movie
        self.last
    end
    # movie_count
    def self.movie_count
        self.count
    end
end