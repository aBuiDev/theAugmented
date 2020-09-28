# Dependencies
require 'time'
require 'colorize'
require 'tty-prompt'
require 'terminal-table'
require_relative './animations.rb'
require_relative './game_start.rb'
require_relative './classes.rb'
require_relative './interface.rb'
require_relative './locations.rb'


# TTY-Prompt
prompt = TTY::Prompt.new


# Variables | Separators
invisible_separator = InterfaceElements::INVISIBLE_SEPARATOR
visible_separator = InterfaceElements::VISIBLE_SEPARATOR


# Deployment Engine
# Title Sequence
InterfaceElements.clear
InterfaceElements::the_augmented_title

sleep 1
puts InterfaceElements::INVISIBLE_SEPARATOR
Animations.loading_bar
puts InterfaceElements::INVISIBLE_SEPARATOR
puts InterfaceElements::INVISIBLE_SEPARATOR

InterfaceElements.game_menu








