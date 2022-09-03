class Role < ActiveRecord::Base
    belongs_to :movie
    belongs_to :actor

    def credit
        "#{self.character_name} acted by #{self.actor.name}"
        # self.all.map do |t|
        #     puts "#{t.character_name} acted by #{t.actor.name}"
        # end
    end
end