# Bank Tech Test

A practice tech test to model a bank, client, account system. Handling deposits, withdrawals and statements

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## Installation

```
irb
```

```
require './lib/bank'
require './lib/account'
```

## User Guide

Create a new bank ``` bank = Bank.new ```
Open an account ``` bank.open_account ```
Make a deposit ```bank.deposit(account number, value, [date])```
Make a withdrawal ```bank.withdraw(account number, value, [date])```
Print out a statement ```bank.print_statement(account number) ```

## Testing

### Run tests

To run test
```
bundle install
```
```
rspec
```
## Approach

My approach to building this app was to start with the requirements. Use them to guide what objects I would need and create a feature test using them. I then solved the feature test line by line. Writing unit tests as appropriate to bridge the gaps. As a result it lead to one large commit as the feature test took a fair amount of code to solve. I then refactored display formatting into its own class following SRP.
