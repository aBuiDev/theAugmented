# Dependencies
require 'time'
require 'colorize'
require 'tty-prompt'
require 'terminal-table'
require 'ruby2d'
require_relative './views/animations.rb'
require_relative './views/game_engine.rb'
require_relative './models/classes/player_class.rb'
require_relative './models/classes/machine_tank.rb'
require_relative './models/classes/cyber_assassin.rb'
require_relative './controllers/interface.rb'
require_relative './models/locations/rendezvous/location_rendezvous.rb'
require_relative './models/locations/sewers/location_sewers.rb'
require_relative './models/locations/statue_entrance/location_statue_entrance.rb'
require_relative './models/locations/statue_head/location_statue_head.rb'



# Audio Track
Music.volume = 50
song = Music.new('./audio/background_music.mp3')
song.play




# Title Sequence
InterfaceElements.clear
InterfaceElements::the_augmented_title



sleep 1
puts InterfaceElements::INVISIBLE_SEPARATOR
Animations.loading_bar
puts InterfaceElements::INVISIBLE_SEPARATOR
puts InterfaceElements::INVISIBLE_SEPARATOR



InterfaceElements.game_menu








