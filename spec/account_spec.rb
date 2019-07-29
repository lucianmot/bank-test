require 'account'

describe Account do
  subject(:account) {Account.new}
  it "when you initialize an account it should have a balance property" do
    expect(account).to respond_to(:balance)
  end

  it "when you initialize an account the balance should be 0" do
    expect(account.balance).to eq(0)
  end

  it "when you deposit cash into your account it should change your account balance accordingly" do
    expect{account.deposit(500)}.to change{account.balance}.by(500)
  end

  it "when you deposit cash into your account it should change your account balance accordingly" do
    account.deposit(1000)
    expect(account.balance).to eq(1000)
    expect{account.withdrawal(500)}.to change{account.balance}.from(1000).to(500)
  end

  it "when you initialize an account it should have a history property" do
    expect(account).to respond_to(:statement)
    expect(account.statement[1]).to eq("date || credit || debit || balance")
  end


end
