require_relative './classes.rb'
require_relative './animations.rb'


# Story Elements Module
module GameEngine



    INVENTORY = []
    WEAPONS = {}
    QUEST_ITEMS = []
    HIT_POINTS = 100
    POWER_LEVEL = 100



    def self.player_name
        puts LayoutElements::INVISIBLE_SEPARATOR
        print "To start game, please input player name here: "
        player_name = gets.chomp
        player_name.to_s
        player_name.capitalize!
        GameEngine.player_class(player_name)
    end



    def self.player_class(player_name)
        LayoutElements.clear
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Player class selection screen"
        puts LayoutElements::VISIBLE_SEPARATOR
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "In the Augmented, you can play as either a Machine Tank or a Cyber Assassin:"
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Machine Tanks can sustain more damage and are masters of long range weaponry, however, their movements are slower."
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Cyber Assassins move much quicker and do massive damage at close range, however, they have lower hit points."
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        prompt = TTY::Prompt.new
        player_class_selection = [
            {name: 'Machine Tank', value: 1},
            {name: 'Cyber Assassin', value: 2},
          ]
        player_class = prompt.select("Please select your class:", player_class_selection)
  
        case player_class
        when 1
            LayoutElements.clear
            new_player = MachineTank.new(player_name)
            GameEngine.story_intro_part_one(new_player)
        when 2
            LayoutElements.clear
            new_player = CyberAssassin.new(player_name)
            GameEngine.story_intro_part_one(new_player)
        end
    end



    def self.story_intro_part_one(new_player)
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Intro: Part 1"
        puts LayoutElements::VISIBLE_SEPARATOR
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "It is the year 2088"
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Advancements in technology has lead to an influx of a new generation of body modifications."
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "These modifications are called augmentations, allowing humans and even animals to seamlessly fuse with"
        puts "advanced mechanical and soft technologies."
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Though a great advancement and step towards human evolution..."
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "the doors of the underworld have been opened to black market and extremely dangerous augmentations..."
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Yes', value: 1},
            {name: 'Repeat Story', value: 2},
          ]
        continue_command = prompt.select("Continue:", continue_only)
  
        case continue_command
        when 1
            GameEngine.story_intro_part_two(new_player)
        when 2
            LayoutElements.clear
            GameEngine.story_intro_part_one(new_player)
        end
    end



    def self.story_intro_part_two(new_player)
        LayoutElements.clear
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Intro: Part 2"
        puts LayoutElements::VISIBLE_SEPARATOR
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You are heavily-augmented and highly-trained anti-terrorist agent, #{new_player.name.light_cyan} Caddel."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You are a #{new_player.class_name.light_cyan} class special agent."
        puts LayoutElements::INVISIBLE_SEPARATOR
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Yes', value: 1},
            {name: 'Repeat Story', value: 2},
          ]
        continue_command = prompt.select("Continue:", continue_only)
  
        case continue_command
        when 1
            GameEngine.story_intro_part_three(new_player)
        when 2
            LayoutElements.clear
            GameEngine.story_intro_part_two(new_player)
        end
    end



    def self.story_intro_part_three(new_player)
        LayoutElements.clear
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "Intro: Part 3"
        puts LayoutElements::VISIBLE_SEPARATOR
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You are on a ferry toward Staten Island."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Your brother, agent Henderson Caddel is already there and waiting at the"
        puts "rendezvous point to debrief you."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "Heavily armed and highly augmented terrorists have taken over the island."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You have been deployed to investigate and neutralise the situation."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "It is 1:08am."
        puts LayoutElements::INVISIBLE_SEPARATOR
        prompt = TTY::Prompt.new
        continue_only = [
            {name: 'Yes', value: 1},
            {name: 'Repeat Story', value: 2},
          ]
        continue_command = prompt.select("Continue:", continue_only)
  
        case continue_command
        when 1
            GameEngine.location_rendezvuos_start(new_player)
        when 2
            LayoutElements.clear
            GameEngine.story_intro_part_three(new_player)
        end
    end



    # Location: Rendezvuos Start
    def self.location_rendezvuos_start(new_player)
        LayoutElements.clear
        sleep 1
        puts LayoutElements::INVISIBLE_SEPARATOR
        puts "The Rendezvous"
        puts LayoutElements::VISIBLE_SEPARATOR
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You arrive at the rendezvuos point and there is no sign of Handerson."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "As the ferry's engine fades into the distance, eerie silence begins to grow."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "It has become apparent that this situation has grown even more sinister."
        puts LayoutElements::INVISIBLE_SEPARATOR
        sleep 1
        puts "You decide to..."
        puts LayoutElements::INVISIBLE_SEPARATOR
        LayoutElements.game_controls(new_player)
    end
end





# Layout & Structuring Elements Module
module LayoutElements
    VISIBLE_SEPARATOR = "----------------------------------------------------------------------------------------------------------"
    INVISIBLE_SEPARATOR = " "

    def self.clear
        print "\e[2J\e[f"
    end

    def self.the_augmented_title
        puts "----------------------------------------------------------------------------------------------------------"
        puts " "
        puts " "
        puts " "
        puts " "
        puts " "
        puts " "
        puts " "
        puts "████████╗██╗░░██╗███████╗  ░█████╗░██╗░░░██╗░██████╗░███╗░░░███╗███████╗███╗░░██╗████████╗███████╗██████╗░".blue
        puts "╚══██╔══╝██║░░██║██╔════╝  ██╔══██╗██║░░░██║██╔════╝░████╗░████║██╔════╝████╗░██║╚══██╔══╝██╔════╝██╔══██╗".light_blue
        puts "░░░██║░░░███████║█████╗░░  ███████║██║░░░██║██║░░██╗░██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░█████╗░░██║░░██║".light_blue
        puts "░░░██║░░░██╔══██║██╔══╝░░  ██╔══██║██║░░░██║██║░░╚██╗██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░██╔══╝░░██║░░██║".light_cyan.blink
        puts "░░░██║░░░██║░░██║███████╗  ██║░░██║╚██████╔╝╚██████╔╝██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░███████╗██████╔╝".blue
        puts "░░░╚═╝░░░╚═╝░░╚═╝╚══════╝  ╚═╝░░╚═╝░╚═════╝░░╚═════╝░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═════╝░".blue
        puts " "
        puts " "
        puts "                                                By aBuiDev                                                ".light_blue
        puts " "
        puts " "
        puts " "
        puts " "
        puts " "
        puts "----------------------------------------------------------------------------------------------------------"
    end

    def self.about_the_augmented
        puts "The Augmented is a text-based game that will prompt users to make emotionally driven decisions that will affect the story's outcome. The Augmented is an action RPG set in the year 2088 where humanity has begun to advance the technologies of being able to transpose machine with man via body augmentations. The Augmented universe is based loosely on Eidos' original Deus Ex PC game. The Augmented will take place in New York, on Staten Island - after highly trained and highly advanced unknown terrorists destroy the statue of liberty. The player will take on the role of Agent Caddel, a highly trained and heavily augmented CIA agent - because his body is now over 75% machine, he also fights an internal battle of self-discovery and self-identity."
    end

    def self.game_menu
        prompt = TTY::Prompt.new
        game_menu_choices = [
            {name: 'Start Game', value: 1},
            {name: 'About The Augmented', value: 2},
            {name: 'Exit Game', value: 3},
          ]
  
        game_menu_user_selection = prompt.select("Game Menu:", game_menu_choices)
  
        case game_menu_user_selection
        when 1
          LayoutElements.clear
          GameEngine.player_name
        when 2
          LayoutElements.clear
          LayoutElements.about_the_augmented
        when 3
          puts "Thank you for playing The Augmented"
        end
    end

    def self.game_controls(new_player)
        prompt = TTY::Prompt.new
        game_controls = [
            {name: 'Visit: Sewers', value: 1},
            {name: 'Visit: Liberty Statue Head', value: 2},
            {name: 'Visit: Statue Entrance', value: 3},
            {name: 'View: Inventory Items', value: 4},
            {name: 'View: Weapons', value: 5},
        ]
        continue_command = prompt.select("Continue:", game_controls)

        case continue_command
        when 1

        when 2

        when 3
            
        when 4
            new_player.view_inventory
            game_controls(new_player)
        when 5
            new_player.view_weapons
            game_controls(new_player)
        end
    end
end




