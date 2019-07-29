require 'account'

describe Account do

  it "when you initialize an account you should have a balance" do
    account = Account.new
    expect(account). to respond_to(:balance)
  end

  it "when you initialize an account the balance should be 0" do
    account = Account.new
    expect(account.balance).to eq(0)
  end

  it "when you deposit cash into your account it should change your account balance accordingly" do
    account = Account.new
    expect{account.deposit(500)}.to change{account.balance}.by(500)
  end

  xit "when you deposit cash into your account it should change your account balance accordingly" do
    account = Account.new

    account.withdrawal(500)
    expect(account.balance). to eq(500)
  end
end
