module GameLocations
     # Location: Statue Entrance Game Over
     def self.location_statue_entrance_game_over(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance Game Over..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Statue Entrance GEP Fight
    def self.location_statue_entrance_gep(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance GEP Fight..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Statue Entrance Sniper Fight
    def self.location_statue_entrance_sniper(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance Sniper Fight..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end



    # Location: Statue Entrance GEP Sniper Fight
    def self.location_statue_entrance_gep_sniper(new_player)
        InterfaceElements.clear
        sleep 1
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance".light_cyan
        puts InterfaceElements::VISIBLE_SEPARATOR
        puts InterfaceElements::INVISIBLE_SEPARATOR
        puts "Statue Entrance GEP Sniper Fight..."
        sleep 1
        InterfaceElements.rendezvous_game_controls(new_player)
    end
end