# I will add comments in this file just for my own referance

# First user story
# As a User
# In order to make an withdrawal
# The ATM needs to have funds

require './lib/atm.rb'

describe Atm do
  it 'has 1000$ on initialize' do
    expect(subject.funds).to eq 1000
  end
end
