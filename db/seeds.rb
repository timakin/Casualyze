# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Category_params
Category.create(name: '言語')
Category.create(name: 'デバイス')
Category.create(name: 'Web')
Category.create(name: 'エンジニア')

# Boards_params
Board.create(board_name: 'Ruby', category_id: 1)
Board.create(board_name: 'Python', category_id: 1)
Board.create(board_name: 'PHP', category_id: 1)
Board.create(board_name: 'Mac', category_id: 2)
Board.create(board_name: 'Windows', category_id: 2)
Board.create(board_name: 'Raspberry Pi', category_id: 2)
Board.create(board_name: 'フロント開発', category_id: 3)
Board.create(board_name: 'サーバー', category_id: 3)
Board.create(board_name: 'ギーク', category_id: 4)
Board.create(board_name: '注目コミッタ', category_id: 4)
Board.create(board_name: 'ハッカー', category_id: 4)
Board.create(board_name: 'デスマーチ', category_id: 4)

# Topic_params