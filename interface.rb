# Game Interface
module InterfaceElements
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



    # Game Menu
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
          InterfaceElements.clear
          GameIntro.player_name
        when 2
          InterfaceElements.clear
          InterfaceElements.about_the_augmented
        when 3
          puts "Thank you for playing The Augmented"
        end
    end



    # Game Controls
    def self.game_controls(new_player)
        prompt = TTY::Prompt.new
        game_controls = [
            {name: 'Visit: Sewers', value: 1},
            {name: 'Visit: Liberty Statue Head', value: 2},
            {name: 'Visit: Statue Entrance', value: 3},
            {name: 'View: Inventory Items', value: 4},
            {name: 'View: Weapons', value: 5},
        ]
        continue_command = prompt.select("Game Controls:", game_controls)

        case continue_command
        when 1

        when 2

        when 3

        when 4
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_inventory
            puts InterfaceElements::INVISIBLE_SEPARATOR
            game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        when 5
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_weapons
            puts InterfaceElements::INVISIBLE_SEPARATOR
            game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        end
    end
end