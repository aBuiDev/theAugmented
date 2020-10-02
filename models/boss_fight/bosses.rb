# Bosses 
class HermesHimler
    attr_reader :boss_name, :attacks
    attr_accessor :hit_points, :power_level
    def initialize
        @hit_points = 0
        @power_level = 0
        @augmentations = []
    end

    def self.boss_name(name = "Hermes Himler")
        puts name
    end

    def self.hit_points
        @hit_points = 100
    end

    def self.attacks
        @augmentations = [
            "| Kinetic Titan Slam Augmentation |", # Paper
            "| Plasma Whip Augmentation |",  # Scissors
            "| Gravity Defence Augmentation |" # Rock
        ]
    end

    def self.attack
        random_number = rand 1..3
        if random_number == 1
            "| Kinetic Titan Slam Augmentation |"
        elsif random_number == 2
            "| Plasma Whip Augmentation |"
        elsif random_number == 3
            "| Gravity Defence Augmentation |"
        end
    end

end

