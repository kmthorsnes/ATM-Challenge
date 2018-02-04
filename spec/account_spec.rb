require './lib/account.rb'

describe Account do
  let(:person) {instance_double('Person', name: 'Hercules')}
  subject { described_class.new({owner: person}) }

  it 'Is expected to have a 4 digit pincode' do
    pin_length = Math.log10(subject.pin_code).to_i + 1
    expect(pin_length).to eq 4
  end

  it 'Is expected to have :active status on initialize' do
    expect(subject.account_status).to eq :active
  end

  it 'Is expected to have an expiry date on initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

  it 'Is expected to have a balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'Deactivates account using Instance method' do
    subject.deactivate
    expect(subject.account_status).to eq :deactivated
  end

  it 'Is expected to have an owner' do
    expect(subject.owner).to eq person
  end

  it 'Is expected to raise error if no owner is set' do
    expect { described_class.new}.to raise_error "An account owner is required"
  end
end
