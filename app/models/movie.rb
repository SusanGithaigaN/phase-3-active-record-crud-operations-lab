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
    # find by id
    def self.find_movie_with_id(id)
        find_by(id:id)
    end
    
    def self.find_movie_with_attributes(attributes)
        where(attributes).first
    end
    # find movies after 2002
    def self.find_movies_after_2002
        where("release_date > 2002")
    end
    # update method
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.update_all_titles(new_title)
        update_all(title:new_title)
        new_title
    end
    # delete record with corresponding id
    def self.delete_by_id(id)
        movie=self.find_by(id:id)
        if movie
            movie.delete
            true
        else
            false
        end
    end
    # delete all movies
    def self.delete_all_movies
        self.delete_all
    end
end