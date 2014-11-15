# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category_params
Category.create(name: 'lang')
Category.create(name: 'dev')
Category.create(name: 'news')
Category.create(name: 'service')
Category.create(name: 'learning')
Category.create(name: 'other')

# Boards_params
Board.create(board_name: 'Lang', category_id: 1)
Board.create(board_name: 'Dev', category_id: 2)
Board.create(board_name: 'News', category_id: 3)
Board.create(board_name: 'App', category_id: 4)
Board.create(board_name: 'Learn', category_id: 5)
Board.create(board_name: 'Anything', category_id: 6)