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
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "About The Augmented".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Augmented is a text-based game that will prompt users to make emotionally driven decisions that" 
        puts "will affect the story's outcome." 
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Augmented is an action RPG set in the year 2088 where humanity has begun to advance the technologies"
        puts "of being able to transpose machine with man via body augmentations."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Augmented universe is based loosely on Eidos' original Deus Ex PC game."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The Augmented will take place in New York, on Staten Island - after highly trained and highly advanced"
        puts "unknown terrorists destroy the statue of liberty." 
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "The player will take on the role of Agent Caddel, a highly trained and heavily augmented CIA agent..."
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Because his body is now over 75% machine, he also fights an internal battle of"
        puts "self-discovery and self-identity."
        puts InterfaceElements::INVISIBLE_SEPARATOR
        InterfaceElements.game_menu
    end



    # Game Menu
    def self.game_menu
        prompt = TTY::Prompt.new
        game_menu_choices = [
            {name: 'Start Game', value: 1},
            {name: 'About The Augmented', value: 2},
            {name: 'Exit Game', value: 3},
          ]
  
        game_menu_user_selection = prompt.select("Game Menu:".light_cyan, game_menu_choices)
  
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
        inventory_command = prompt.select("Game Controls:".light_cyan, inventory_controls)

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
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        prompt = TTY::Prompt.new
        game_controls = [
            {name: 'Visit: Sewers', value: 1},
            {name: 'Visit: Liberty Statue Head', value: 2},
            {name: 'Visit: Statue Entrance', value: 3},
            {name: 'View: Inventory Items', value: 4},
            {name: 'View: Weapons', value: 5},
        ]
        continue_command = prompt.select("Game Controls:".light_cyan, game_controls)

        case continue_command

        when 1
            if new_player.weapon_name.include? "GEP Gun"
                GameLocations.location_sewers_visited(new_player)
            else
                GameLocations.location_sewers(new_player)
            end
        when 2
            if new_player.weapon_name.include? "GEP Gun"
                GameLocations.liberty_statue_head(new_player)
            else
                GameLocations.liberty_statue_head_game_over(new_player)
            end
        when 3
            if new_player.weapon_name.include? "Sniper Rifle" && "GEP Gun"
                GameLocations.location_statue_entrance_gep_sniper(new_player)
            elsif new_player.weapon_name.include? "GEP Gun"
                GameLocations.location_statue_entrance_gep(new_player)
            elsif new_player.weapon_name.include? "Sniper Rifle"
                GameLocations.location_statue_entrance_sniper(new_player)
            else
                GameLocations.location_statue_entrance_game_over(new_player)
            end
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
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        gep_gun = {weapon_name: "GEP Gun", ammo: 3, damange: 200}
        prompt = TTY::Prompt.new
        game_controls = [
            {name: 'Loot Mutated Sewer Rat Body', value: 1},
            {name: 'Return: Rendezvous', value: 2},
            {name: 'View: Inventory Items', value: 3},
            {name: 'View: Weapons', value: 4},
        ]
        continue_command = prompt.select("Game Controls:".light_cyan, game_controls)

        case continue_command   
        when 1
            if new_player.weapon_name.include? "GEP Gun"
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "Creature has already been looted."
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                InterfaceElements.sewers_game_controls(new_player)
            else
                new_player.pickup_weapon(gep_gun)
                new_player.add_weapon(gep_gun)
                new_player.add_weapon_name(gep_gun)
                puts InterfaceElements::INVISIBLE_SEPARATOR
                puts "Upon inspection of the creature, you discover a #{"(Guided Explosive Projectile) GEP Gun".light_cyan}."
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                puts "You loot the creature's body.".yellow
                puts InterfaceElements::INVISIBLE_SEPARATOR
                sleep 1
                puts ">> (Guided Explosive Projectile) GEP Gun added to weapons <<".green
                puts InterfaceElements::INVISIBLE_SEPARATOR
                InterfaceElements.sewers_game_controls(new_player)
            end
        when 2
            GameLocations.location_rendezvous_visited(new_player) 
        when 3
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_inventory
            puts InterfaceElements::INVISIBLE_SEPARATOR
            InterfaceElements.sewers_game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        when 4
            puts InterfaceElements::INVISIBLE_SEPARATOR
            new_player.view_weapons
            puts InterfaceElements::INVISIBLE_SEPARATOR
            InterfaceElements.sewers_game_controls(new_player)
            puts InterfaceElements::INVISIBLE_SEPARATOR
        end
    end




end