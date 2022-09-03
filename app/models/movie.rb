class Movie < ActiveRecord::Base
   has_many :roles
   has_many :actors, through: :roles

#    Movie#cast_role(actor, character_name, salary)
    def cast_role(actor, character_name, salary)
        # takes in the given arguments and creates a role
        Role.create(salary:salary, character_name:character_name, actor_id: actor.id, movie_id: self.id)
    end

    # Return array of  credits for each role
    def all_credits
        self.roles.map{|role| "#{role.character_name}: Played by #{role.actor.name}"}
    end

    #fire actor role
    def fire_actor(actor)
        # self.roles.find{|role| role.actor_id==actor.id}.destroy
        Role.find_by(movie_id:self.id, actor_id:actor.id).destroy
    end
end