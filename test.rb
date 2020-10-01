# def the_decider
#     random = rand 1..100
#     if random < 49
#         puts "Not Going"
#     elsif random > 50
#         puts "Going"
#     end
# end

# 3.times do the_decider end

require 'ruby2d'

set title: "Hello Triangle"

Triangle.new(
  x1: 320, y1:  50,
  x2: 540, y2: 430,
  x3: 100, y3: 430,
  color: ['red', 'green', 'blue']
)

show
