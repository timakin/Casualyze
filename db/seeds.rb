# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category_params
Category.create(name: 'Language')
Category.create(name: 'Devise')
Category.create(name: 'Web')
Category.create(name: 'Engineer')

# Boards_params
Board.create(board_name: 'Ruby', category_id: 1)
Board.create(board_name: 'Python', category_id: 1)
Board.create(board_name: 'PHP', category_id: 1)
Board.create(board_name: 'Mac', category_id: 2)
Board.create(board_name: 'Windows', category_id: 2)
Board.create(board_name: 'Raspberry Pi', category_id: 2)
Board.create(board_name: 'Frontend', category_id: 3)
Board.create(board_name: 'ServerSide', category_id: 3)
Board.create(board_name: 'Geek', category_id: 4)
Board.create(board_name: 'Commiter', category_id: 4)
Board.create(board_name: 'Hacker', category_id: 4)
Board.create(board_name: 'DeathMarch', category_id: 4)

# Topic_params