


# Story Elements Module
module GameEngine

    def self.player_name
        puts LayoutElements::INVISIBLE_SEPARATOR
        print "To start game, please input player name here: "
        player_name = gets.chomp
        player_name.to_s
        player_name.capitalize!
        GameEngine.story_intro(player_name)
    end

    def self.story_intro(player_name)
        sleep 1
        puts "It is the year 2088"
        sleep 1
        puts "Advancements in technology has lead to an influx of a new generation of body modification, called augmentations.".light_cyan
        sleep 1
        puts "You are highly trained super augmented CIA Agent #{player_name.light_cyan} Caddel."
        sleep 1
    end

    def self.about_the_augmented
        puts "The Augmented is a text-based game that will prompt users to make emotionally driven decisions that will affect the story's outcome. The Augmented is an action RPG set in the year 2088 where humanity has begun to advance the technologies of being able to transpose machine with man via body augmentations. The Augmented universe is based loosely on Eidos' original Deus Ex PC game. The Augmented will take place in New York, on Staten Island - after highly trained and highly advanced unknown terrorists destroy the statue of liberty. The player will take on the role of Agent Caddel, a highly trained and heavily augmented CIA agent - because his body is now over 75% machine, he also fights an internal battle of self-discovery and self-identity."
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

end



# Layout & Structuring Elements
module LayoutElements
    VISIBLE_SEPARATOR = "----------------------------------------------------------------------------------------------------------"
    INVISIBLE_SEPARATOR = " "

    def self.clear
        print "\e[2J\e[f"
    end

    def self.game_menu
        prompt = TTY::Prompt.new
        game_menu_items = %w(Start_Game About_The_Augmented Exit_Game)
        game_menu_user_selection = prompt.select("Game Menu: ".light_blue, game_menu_items)
        if game_menu_user_selection == "Start_Game"
            LayoutElements.clear
            GameEngine.player_name
        elsif game_menu_user_selection == "About_The_Augmented"
            LayoutElements.clear
            GameEngine.about_the_augmented
        elsif game_menu_user_selection == "Exit_Game"
            puts "Thank you for playing The Augmented"
        end 
    end
end




