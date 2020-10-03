require_relative './bosses.rb'
require_relative '../../classes.rb'
require_relative '../../interface.rb'
require_relative '../../location_statue_entrance.rb'
require 'tty-prompt'
require 'colorize'



module EpicBossFight
    def self.battle_time(new_player)
        hermes_points = 100
        player_points = 100
        i = 1
        while i < 5
            InterfaceElements.clear
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts "#{"Hermes Himler (Boss Fight)".light_cyan}                          #{"Hermes Himler Hit Points:".light_cyan} #{hermes_points.to_s.yellow} | #{new_player.name.light_cyan} #{"Hit Points:".light_cyan} #{player_points.to_s.yellow}"
            puts InterfaceElements::VISIBLE_SEPARATOR
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts "You are engaged in an epic augmentation battle with Terrorist Commander Hermes Himler!"
            sleep 1
            puts InterfaceElements::INVISIBLE_SEPARATOR
            puts "Hermes Himler starts activating an augmentation..."
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
                    puts "#{"| Gravity Force Augmentation |".light_cyan} negates Hermes #{"| Kinetic Titan Slam Augmentation |".red}, you both remain undamaged."
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                elsif HermesHimler.attack == "| Plasma Whip Augmentation |"
                    player_points -= 40
                    puts "Hermes Himler's #{"| Plasma Whip Augmentation |".red} strikes you! You sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                else
                    hermes_points -= 40
                    puts "#{"| Gravity Force Augmentation |".light_cyan} breaks Herme's #{"| Gravity Defence Augmentation |".red}, His systems sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                end
            when 2
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "You activate #{"| Nano Arm Blade Augmentation |".light_cyan}" # Scissors
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                if HermesHimler.attack == "| Kinetic Titan Slam Augmentation |"
                    hermes_points -= 40
                    puts "#{"| Nano Arm Blade Augmentation |".light_cyan} slashes Hermes, while he tries to execute a #{"| Kinetic Titan Slam Augmentation |".red},"
                    puts "his body sustains damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                elsif HermesHimler.attack == "| Plasma Whip Augmentation |"
                    puts "#{"| Nano Arm Blade Augmentation |".light_cyan} and #{"| Plasma Whip Augmentation |".red} lock, you both remain undamaged."
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                else
                    player_points -= 40
                    puts "Hermes Himler's #{"| Gravity Defence Augmentation |".red} hits you, while you try to strike with a #{"| Nano Arm Blade Augmentation |".light_cyan},"
                    puts "You sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                end
            when 3
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "You activate #{"| Titan Shield Augmentation |".light_cyan}" # Rock
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                if HermesHimler.attack == "| Kinetic Titan Slam Augmentation |"
                    player_points -= 40
                    puts "#{"| Titan Shield Augmentation |".light_cyan} is smashed by Hermes #{"| Kinetic Titan Slam Augmentation |".red},"
                    puts "you sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                elsif HermesHimler.attack == "| Plasma Whip Augmentation |"
                    puts "Hermes Himlers #{"| Plasma Whip Augmentation |".red} is force-stopped by your #{"| Titan Shield Augmentation |".light_cyan},"
                    puts "you both remain undamaged."
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                else
                    hermes_points -= 40
                    puts "#{"| Gravity Defence Augmentation |".red} causes a shockwave against your #{"| Titan Shield Augmentation |".light_cyan},"
                    puts "Hermes Himler sustain damage!"
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 1
                    puts ".".light_cyan
                    sleep 1
                    puts ".".light_cyan
                    puts InterfaceElements::INVISIBLE_SEPARATOR
                    sleep 2
                end
            end
            i += 1
        end
        sleep 2
        puts "The battle is over, destruction and debris still moving around you and Hermes Himler..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "dust and smoke moving around the two of you as if slow motion..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As the smoke clears between you and Hermes Himler, clarity falls upon the both of you like a crushing wave..."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        # Interface Controls --------------------------------------------------------------------
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Continue', value: 1},
        ]
        continue_command = prompt.select("Press Continue When Ready:".light_cyan, continue_only)
        # Control Conditionals ------------------------------------------------------------------
        case continue_command
        when 1
            if hermes_points >= player_points
                GameLocations.location_statue_entrance_gep_sniper_lose_part_one(new_player)
            else
                puts "Player wins"
            end
        end
    end
end