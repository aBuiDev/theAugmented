# Game Interface
module InterfaceElements
    VISIBLE_SEPARATOR = "----------------------------------------------------------------------------------------------------------".light_cyan
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



    # Deploy Inventory Controls
    def self.deploy_inventory(new_player)
        puts InterfaceElements::INVISIBLE_SEPARATOR
        new_player.view_inventory
        puts InterfaceElements::INVISIBLE_SEPARATOR
        prompt = TTY::Prompt.new
        inventory_controls = [
            {name: 'Use Health Kit', value: 1},
            {name: 'Use Power Charge', value: 2},
            {name: 'Close Inventory', value: 3},
        ]
        inventory_command = prompt.select("Game Controls:", inventory_controls)

        case inventory_command

        when 1

        when 2

        when 3



        end
    end



    # Deply Weapoon Storage Controls
    def self.deploy_weapon_storage(new_player)
        puts InterfaceElements::INVISIBLE_SEPARATOR
        new_player.view_weapons
        puts InterfaceElements::INVISIBLE_SEPARATOR
    end



    # Rendezvous Game Controls
    def self.rendezvous_game_controls(new_player)
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
            GameLocations.location_sewers(new_player)
        when 2

        when 3

        when 4
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_inventory
            puts InterfaceElements::INVISIBLE_SEPARATOR
            rendezvous_game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        when 5
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_weapons
            puts InterfaceElements::INVISIBLE_SEPARATOR
            rendezvous_game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        end
    end





    # Sewers Game Controls
    def self.sewers_game_controls(new_player)
        gep_gun = {weapon_name: "GEP Gun", ammo: 3, damange: 200}
        prompt = TTY::Prompt.new
        game_controls = [
            {name: 'Loot Mutated Sewer Rat Body', value: 1},
            {name: 'Visit: Rendezvous', value: 2},
            {name: 'Visit: Liberty Statue Head', value: 3},
            {name: 'Visit: Statue Entrance', value: 4},
            {name: 'View: Inventory Items', value: 5},
            {name: 'View: Weapons', value: 6},
        ]
        continue_command = prompt.select("Game Controls:", game_controls)

        case continue_command   
        when 1
            new_player.weapons.each do | weapon |
                weapon.each do | key, value |
                    if value == "GEP Gun"
                        puts InterfaceElements::INVISIBLE_SEPARATOR
                        puts "Creature has already been looted."
                        puts InterfaceElements::INVISIBLE_SEPARATOR
                        sleep 1
                        InterfaceElements.sewers_game_controls(new_player)
                    else
                        new_player.pickup_weapon(gep_gun)
                        puts InterfaceElements::INVISIBLE_SEPARATOR
                        puts "Upon inspection of the creature, you discover a"
                        puts "#{"(Guided Explosive Projectile) GEP Gun".light_cyan}."
                        puts InterfaceElements::INVISIBLE_SEPARATOR
                        sleep 1
                        puts "You loot the creature's body.".yellow
                        puts InterfaceElements::INVISIBLE_SEPARATOR
                        sleep 1
                        puts ">> (Guided Explosive Projectile) GEP Gun added to weapons <<".green
                        puts InterfaceElements::INVISIBLE_SEPARATOR
                        InterfaceElements.sewers_game_controls(new_player)
                    end
                end
            end
        when 2

        when 3

        when 4

        when 5
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_inventory
            puts InterfaceElements::INVISIBLE_SEPARATOR
            InterfaceElements.sewers_game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        when 6
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_weapons
            puts InterfaceElements::INVISIBLE_SEPARATOR
            InterfaceElements.sewers_game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        end
    end




end