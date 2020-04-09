# :money_with_wings: ATM CHALLENGE 2020

## The Project

## Dependencies

## Terminal Instructions

Load files in IRB or Pry 
  ```
  >load “person.rb” ; load “atm.rb” ; load “account.rb”  
  ```
Create Person 
  ```
  >customer = Person.new(name:”Bernie”)  
  ```
Create ATM  
  ```
  >atm = Atm.new 
  ```
Create Account  
  ```
  >customer.create_account 
  ```
Deposit to Account 
  ```
  >customer.deposit(200)  
  ```
Withdraw from Account
  ```
  >customer.withdraw({amount:100,pin:customer.account.pin_code,account:customer.account,atm:atm})  
  ```
## User Stories Tested with RSpec

* As a Bank,
In order to identify accounts,
Created accounts must have a owner.

* As a Bank,
To create an account,
Accounts must have an owner first.

* As a Bank,
To have a limited lifetime accounts,
Accounts must have an expiry date.

* As a Customer,
In order to use my account,
My account must be created as active.

* As a Customer,
To close/freeze my account,
I can set it as deactivated.

* As a Bank,
In order to allow withdrawal,
ATM must have sufficient funds to work.

* As a Bank,
In order to pay out money,
Account must have enough money.

* As a Bank,
In order to pay out money,
ATM must have enough money.

* As a Bank,
To provide account security,
Reject withdrawal with wrong pin.

* As a Bank,
To provide account security,
Reject withdrawal with expired account.

* As a Bank,
To provide account security,
Reject withdrawal from disabled account.

* As a Customer,
To withdraw money,
Account must have enough balance.

* As a Customer,
To able to withdraw money,
I must have an account.

* As a Customer,
To able to withdraw/deposit money,
ATM machine must exist.

* As a Customer,
In order to increase my account balance,
I must deposit money to my account.

* As a Customer,
In order to deposit money to my account,
I need to have 250 funds to deposit.

## License
This project is licensed under the **MIT License**.
