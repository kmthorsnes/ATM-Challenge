ATM Challenge take2

# ATM Challenge take2

Kalles give this challenge another go. 

## Background
The goal is to create a virtual ATM simulator with basic functionality. 

Our client is a financial institution that wants to allow its customers to withdraw funds from their accounts using an Automatic Teller Machine (ATM). They have turned to us for a prototype of a system with limited functionality. Our job is to write a simple Ruby program that can be run in the Interactive Ruby Shell (IRB).

### Learning objectives

* Review fundamentals learned in the prep course
* Learn about Ruby classes, modules, methods and attributes
* Learn about unit testing with RSpec and the benefits of writing automated tests
* Learn about naming standards
* Learn about using double, class_double and instance_double
* Learn about debugging and common techniques
* Work with user stories
* Learning how to pair program and work in a group (Not this time Kalle).

### How to use. 

Clone or download this repo and load the file in terminal with irb. 

Say what the step will be

### To run the application

```
$ load './lib/atm-demo.rb'
=> true 

$ load './lib/person.rb'
=> true
```
Create a person
```
$ person = Person.new(:name 'Kalle')
=> person
```
Create a ATM

```
$ atm = ATM.new
=> atm
```
### To use the "ATM"
**Withdrawal from ATM**
The ATM has 1000 USD at startjup <br/>
State the amount, your pin, the account name, and the name of the atm in this format:

```
$ person.withdraw(amount: 250, pin: 9999, account, atm: atm)
=> 250
```
**Deposit to ATM**
State the amount you want to deposit
```
$ person.deposit(100)
=> 100
```
**Cash, balance and funds**

It's possible to check how much cash the person has, how much cash which is in the ATM and how much there is in the persons account. 
**Cash**
```
$ person.cash
=> 250
```
**Balance**
```
$ person.balance
=> 750
```
**Funds**
```
$ person.balance
=> 350
```

## Acknowledgments

* In addition to the course material Davids and Aidens work: https://github.com/AKidd95/ATM_demo was used as reference for setting up this project.

## Badges
<a href='https://coveralls.io/github/kmthorsnes/atm2?branch=master'><img src='https://coveralls.io/repos/github/kmthorsnes/atm2/badge.svg?branch=master' alt='Coverage Status' /></a>

