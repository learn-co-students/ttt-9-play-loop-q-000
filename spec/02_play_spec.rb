require_relative '../lib/play'

describe '#play' do
  it 'calls turn nine times' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

    expect(self).to receive(:turn).at_least(9).times
    puts "what"
    play(board)
  end
end
