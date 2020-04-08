class Account

    STANDARD_VALIDITY_YRS = 5

    def set_expire_date

        Date.today.next_year(STANDARD_VALIDITY_YRS).strft("%m/%y")
        
    end


end