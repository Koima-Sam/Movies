class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles
    
    # Total salary for actor
    def total_salary
        # gets sum for salary key
        self.roles.sum(:salary)
    end

    # get movies of the actor where salary > 50000000
    def blockbusters
        self.movies.where("box_office_earnings > ?",50000000)
        # self.movies.map {|movie| movie if movie.box_office_earnings > 50000000}
    end
    # highest paid actor
    def self.most_successful
        self.all.sort_by {|actor| actor.total_salary}.last
    end



end