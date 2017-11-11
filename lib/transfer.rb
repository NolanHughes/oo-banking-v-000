class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    # if @sender.valid? && @receiver.valid?
    #   true
    # else
    #   false
    # end
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if self.valid? && @status == "pending"
      @receiver.deposit(@amount)
      @sender.withdraw(@amount)
      @status = "complete"
    end
  end

end
