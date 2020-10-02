require_relative './bosses.rb'
require_relative '../../classes.rb'
require_relative '../../interface.rb'
require 'tty-prompt'
require 'colorize'

# puts HermesHimler.attack

# new_assassin = CyberAssassin.new("Andrew")
# puts new_assassin.attacks[0][:move]

# new_assassin = CyberAssassin.new("Andrew")


module EpicBossFight
    def self.battle_time(new_player)
        hermes_points = 100
        player_points = 100
        i = 1
        while i < 3
            InterfaceElements.clear
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts "#{"Hermes Himler (Boss Fight)".light_cyan}                         #{"Hermes Himler Hit Points:"} #{hermes_points} | #{new_player.name} Hit Points: #{player_points}"
            puts InterfaceElements::SPECIAL_SEPARATOR
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts "You are engaged in an epic augmentation battle with Terrorist Commander Hermes Himler!"
            sleep 1
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts "Hermes Himler activates #{HermesHimler.attack.red}"
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts InterfaceElements::VISIBLE_SEPARATOR
            puts InterfaceElements::INVISIBLE_SEPARATOR
            prompt = TTY::Prompt.new
            player_attack_selection = [
                {name: 'Gravity Force Augmentation', value: 1}, # Paper
                {name: 'Nano Arm Blade Augmentation', value: 2}, # Scissors
                {name: 'Titan Shield Augmentation', value: 3}, # Rock
            ]

            attack_selection = prompt.select("Select attack augmentation:".light_cyan, player_attack_selection)
    
            case attack_selection
            when 1
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "You activate #{"| Gravity Force Augmentation |".light_cyan}" # Paper
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                if HermesHimler.attack == "| Kinetic Titan Slam Augmentation |"
                    player_points -= 0
                    puts "#{"| Gravity Force Augmentation |".light_cyan} negates Hermes attack, you both remain undamaged."
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                elsif HermesHimler.attack == "| Plasma Whip Augmentation |"
                    player_points -= 40
                    puts "Hermes Himler's #{"| Plasma Whip Augmentation |".red} strikes you! You sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                else
                    hermes_points -= 40
                    puts "#{"| Gravity Force Augmentation |".light_cyan} hits Hermes! His systems sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                end
                sleep 2
                puts InterfaceElements::INVISIBLE_SEPARATOR
            when 2
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "You activate #{"| Nano Arm Blade Augmentation |".light_cyan}" # Scissors
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                if HermesHimler.attack == "| Kinetic Titan Slam Augmentation |"
                    hermes_points -= 40
                    puts "#{"| Nano Arm Blade Augmentation |".light_cyan} slashes Hermes! His body sustains damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                elsif HermesHimler.attack == "| Plasma Whip Augmentation |"
                    player_points -= 0
                    puts "#{"| Nano Arm Blade Augmentation |".light_cyan} and #{"| Plasma Whip Augmentation |".red} lock"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                else
                    player_points -= 40
                    puts "Hermes Himler's #{"| Gravity Defence Augmentation |".red} hits you! You sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                end
                sleep 2
                puts InterfaceElements::INVISIBLE_SEPARATOR
            when 3
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "You activate #{"| Titan Shield Augmentation |".light_cyan}" # Rock
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                if HermesHimler.attack == "| Kinetic Titan Slam Augmentation |"
                    player_points -= 40
                    puts "#{"| Titan Shield Augmentation |".light_cyan} is smashed by Hermes #{"| Kinetic Titan Slam Augmentation |".red}"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                elsif HermesHimler.attack == "| Plasma Whip Augmentation |"
                    player_points -= 0
                    puts "Hermes Himlers #{"| Plasma Whip Augmentation |".red} is force-stopped by your #{"| Titan Shield Augmentation |".light_cyan}"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                else
                    hermes_points -= 40
                    puts "#{"| Gravity Defence Augmentation |"} causes a shockwave with your #{"| Titan Shield Augmentation |".light_cyan}"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                end
                sleep 2
                puts InterfaceElements::INVISIBLE_SEPARATOR
            end
            i += 1
        end
    end
end