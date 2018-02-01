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

  # Second user story
  # as a User
  # In order to get cash, my money should be reduced on withdrawal
  # Atm needs to reduce funds when i withdrawal

  it 'funds are reduced at withdrawal' do
    subject.withdraw 50
    expect(subject.funds).to eq 950
  end

end
