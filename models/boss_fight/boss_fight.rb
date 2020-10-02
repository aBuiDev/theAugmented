require_relative './bosses.rb'
require_relative '../../classes.rb'
require 'tty-prompt'
require 'colorize'

# puts HermesHimler.attack

# new_assassin = CyberAssassin.new("Andrew")
# puts new_assassin.attacks[0][:move]

# new_assassin = CyberAssassin.new("Andrew")


module EpicBossFight
    def self.battle_time
    i = 1
    while i < 10
        prompt = TTY::Prompt.new
        player_attack_selection = [
            {name: '| Gravity Force Augmentation |', value: 1},
            {name: '| Nano Arm Blade Augmentation |', value: 2},
            {name: '| Titan Shield Augmentation |', value: 3},
          ]

        attack_selection = prompt.select("Please select your class:".light_cyan, player_attack_selection)
  
        case attack_selection
        when 1
            puts "| Gravity Force Augmentation |"
            puts "Hermes Himler activates #{HermesHimler.attack.red}"
        when 2
            puts "| Nano Arm Blade Augmentation |"
            puts "Hermes Himler activates #{HermesHimler.attack.red}"
        when 3
            puts "| Titan Shield Augmentation |"
            puts "Hermes Himler activates #{HermesHimler.attack.red}"
        end
        i += 1
    end
    end
end

EpicBossFight.battle_time