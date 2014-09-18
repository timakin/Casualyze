# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category_params
Category.create(name: 'lang')
Category.create(name: 'infra')
Category.create(name: 'device')
Category.create(name: 'startup')
Category.create(name: 'other')

# Boards_params
Board.create(board_name: 'Go', category_id: 1)
Board.create(board_name: 'Python', category_id: 1)
Board.create(board_name: 'Ruby', category_id: 1)
Board.create(board_name: 'PHP', category_id: 1)
Board.create(board_name: 'C', category_id: 1)
Board.create(board_name: 'JavaScript', category_id: 1)
Board.create(board_name: 'Java', category_id: 1)
Board.create(board_name: 'Objective-C', category_id: 1)

Board.create(board_name: 'VM', category_id: 2)
Board.create(board_name: 'Unix', category_id: 2)

Board.create(board_name: 'PC', category_id: 3)
Board.create(board_name: 'Mobile', category_id: 3)
Board.create(board_name: 'VRAR', category_id: 3)
Board.create(board_name: 'IoT', category_id: 3)
Board.create(board_name: 'Peripherals', category_id: 3)

Board.create(board_name: 'Entrepreneur', category_id: 4)
Board.create(board_name: 'VC', category_id: 4)
Board.create(board_name: 'M&A', category_id: 4)

Board.create(board_name: 'Newbie', category_id: 5)
Board.create(board_name: 'Whatever', category_id: 5)