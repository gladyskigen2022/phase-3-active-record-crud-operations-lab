class Movie < ActiveRecord::Base
    # find all the movies fo a given year
    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
      end
    
      #A movie can be instantiated, given a title, and saved
      def self.create_with_title(title)
        Movie.create(title: title)
      end
      
      #Can return the first item in the table
      def self.first_movie
        Movie.first
      end

      #Can return the last item in the table
      def self.last_movie
        Movie.last
      end
      
      #Can return the number of records in the table
      def self.movie_count
        Movie.count
      end

      #Can return a movie from the table based on its id with the .find method
      def self.find_movie_with_id(id)
        Movie.find(id)
      end
      
      #Can return a movie from the table based on its attributes with the .find_by method
      def self.find_movie_with_attribute(attributes)
        Movie.find_by(attributes)
      end

      #Can use a .where clause to select the appropriate movies released after 2002
      def self.find_movie_after_2002
        Movie.where('release_date >2002')
      end

      

    end