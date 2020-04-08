class Account

    STANDARD_VALIDITY_YRS = 5

    def initialize(attrs = {})
         @account_status = :active
         set_owner(attrs[:owner])
    end

    def deactivate
        @account_status = :deactivated

    end
    
    def set_expire_date

        Date.today.next_year(STANDARD_VALIDITY_YRS).strft("%m/%y")
        
    end

private
def set_owner(obj)
    obj == nil ? missing_owner : @owner = obj
end

def missing_owner
    raise "An Account owner is required"
end
end