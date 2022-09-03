class Role < ActiveRecord::Base
    belongs_to :movie
    belongs_to :actor

    def credit
        # should return a string formatted
        "#{self.character_name} acted by #{self.actor.name}"
    end
end