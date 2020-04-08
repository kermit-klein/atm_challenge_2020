require "date"
class Atm 

    attr_accessor :funds
    def initialize
        @funds = 1000
        puts "ATM created with 1000 funds"  #Info on terminal
    end
    
    def withdraw(amount,pin_code,account)
        case 
        when incorrect_pin?(pin_code,account.pin_code)     #This must be checked first
            {status:false,message:"wrong pin",date:Date.today}
        when insufficient_funds_in_account?(amount,account)
            {status:false,message:"insufficient funds",date:Date.today}
        when insufficient_funds_in_atm?(amount)
            {status: false, message: 'insufficient funds in ATM', date: Date.today}
        when card_expired?(account.exp_date)
            {status:false,message:"card expired",date:Date.today}
        when account_disabled?(account.account_status)
            { status:false, message:"account is disabled",date:Date.today}
        else 
            perform_transaction(amount,account)
        end 
    end

    private

    def insufficient_funds_in_atm?(amount)
        @funds < amount 
    end
      
    def   insufficient_funds_in_account?(amount,account)
        amount > account.balance
    end

    def  perform_transaction(amount,account)
        @funds -= amount
        account.balance = account.balance - amount
        output = { status:true,message:"success",date:Date.today, amount:amount, bills: add_bills(amount)}
        p output
        return output
    end

    def add_bills(amount)
        denominations = [20,10, 5]
        bills = []
        denominations.each do |bill|
            while amount - bill >= 0
                amount -= bill
                bills << bill
            end
        end 
        bills
    end

    def incorrect_pin?(pin_code,actual_pin)
        pin_code != actual_pin
    end

    def card_expired?(exp_date)
        Date.strptime(exp_date,"%m/%y") < Date.today
    end

    def account_disabled?(account_status)
        account_status != :active
    end
end 


