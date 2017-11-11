require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def balance
    @balance
  end

  def status
    @status
  end

  def deposit(amount)
    @balance += amount
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  #valid if balance is less than 0 or status is "closed"
  def valid?
    if @balance > 0 && @status = "open"
      true
    else
      false
    end
  end
end

avi = BankAccount.new("Avi")

@broke = BankAccount.new("Kat Dennings")
@broke.balance = 0
@closed = BankAccount.new("Beth Behrs")
@closed.status = "closed"

binding.pry
