require "./lib/account.rb"

class Person 

        attr_accessor :name, :account, :cash

        def initialize(attrs= {})
        @name=set_name(attrs[:name])
        @cash=0
        @account=nil
        end

        def set_name(obj)
            obj== nil ? (raise "A name is required"): @owner = obj
        end

        def create_account 
        @account = Account.new(owner: self)
        end

        def deposit(amount)
        @account == nil ? missing_account : deposit_funds(amount)
        end

        def missing_account
            raise RuntimeError, "No account present"
        end

        def deposit_funds(amount)
            @cash -= amount
            @account.balance += amount
        end

        def withdraw(args={})
        args[:atm]== nil ? (raise 'An ATM is required'): atm = args[:atm]
        atm_output=atm.withdraw(args[:amount], args[:pin], args[:account])
        atm_output[:status]==false ? atm_output[:message]: @cash+=args[:amount]
        end

end