require 'spec_helper'

describe Topic do
	describe 'Association' do
		it { should have_many(:comments) }
		it { should have_many(:votings) }
		it { should have_many(:topic_visits) }
#		it { should belong_to(:category) }
		it { should belong_to(:board) }
	end

	describe 'Validation' do
		describe 'title' do
			it 'It must exist' do
				should validate_presence_of(:title)
			end
		end
		describe 'content' do
			it 'It must exist' do
				should validate_presence_of(:content)
			end
		end
		describe 'category_id' do
			it 'It must exist' do
				should validate_presence_of(:category_id)
			end
		end
		describe 'board_id' do
			it 'It must exist' do
				should validate_presence_of(:board_id)
			end
		end
	end
end
