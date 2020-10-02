# Bosses 
class HermesHimler
    attr_reader :boss_name, :attacks
    attr_accessor :hit_points
    def initialize(name)
        @boss_name = name
        @hit_points = 0
        @power_level = 100
        @augmentations = []
    end

    def self.boss_name(name = "Hermes Himler")
        puts name
    end

    def self.attacks
        @augmentations = [
            {move: "| Kinetic Titan Slam Augmentation |", damage: 20, energy: 25},
            {move: "| Plasma Whip Augmentation |", damage: 20, energy: 25},
            {move: "| Gravity Defence Augmentation |", damage: 0, energy: 25}
        ]
    end

    def self.attack
        random_number = rand 1..3
        if random_number == 1
            HermesHimler.attacks[0][:move]
        elsif random_number == 2
            HermesHimler.attacks[1][:move]
        elsif random_number == 3
            HermesHimler.attacks[2][:move]
        end
    end

end


