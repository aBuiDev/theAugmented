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
LayoutElements::the_augmented_title

sleep 1
puts LayoutElements::INVISIBLE_SEPARATOR
loading_bar
puts LayoutElements::INVISIBLE_SEPARATOR
puts LayoutElements::INVISIBLE_SEPARATOR

LayoutElements.game_menu








