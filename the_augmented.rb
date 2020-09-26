# Dependencies
require 'time'
require 'colorize'
require 'tty-prompt'
require_relative './animations.rb'
require_relative './modules.rb'


# TTY-Prompt
prompt = TTY::Prompt.new


# Variables | Separators
invisible_separator = LayoutElements::INVISIBLE_SEPARATOR
visible_separator = LayoutElements::VISIBLE_SEPARATOR


LayoutElements.clear
GameEngine::the_augmented_title


sleep 1
LayoutElements.clear
LayoutElements.game_menu


player_class = %w(Heavy Assassin)
prompt.select("Select your class: ", player_class)








