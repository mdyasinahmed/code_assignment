// abstract class(Account)
abstract class Account {
  // Properties of Account class
  int accountNumber;
  double balance;

  // Account class's Constructor
  Account(this.accountNumber, this.balance);


  // deposit method
  void deposit(double amount) {
    balance += amount;
    print('Deposited: $amount');
  }
  // withdraw method
  void withdraw(double amount);
}

// SavingsAccount class inherited from the Account class
class SavingsAccount extends Account {
  // Properties of SavingsAccount class
  double interestRate;

  // SavingsAccount's Constructor
  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  // Overriding withdraw() method
  @override
  void withdraw(double amount) {
    if(balance >= amount) {
      balance -= amount;
      balance += balance * interestRate;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient funds');
    }
  }
}

// CurrentAccount class Inherited from Account class
class CurrentAccount extends Account {
  // Properties of CurrentAccount class
  double overdraftLimit;

  // Constructor of CurrentAccount class
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  // Overriding withdraw() method
  @override
  void withdraw(double amount) {
    if(balance + overdraftLimit >= amount) {
      balance -= amount;
      print('Withdrawn: $amount');
    } else {
      print('Insufficient funds');
    }
  }
}

// main method
void main() {
  // Instance of the SavingsAccount
  final savingsAccount = SavingsAccount(151216, 20000.06, 0.5);

  // Performing Operations on Instance of SavingsAccount
  print('Savings Account:');
  savingsAccount.deposit(1000.0);
  savingsAccount.withdraw(500.0);

  // Instance of the CurrentAccount
  final currentAccount = CurrentAccount(789012, 500.0, 1000.0);

  // Performing Operations on Instance of CurrentAccount
  print('\nCurrent Account:');
  currentAccount.deposit(1500.0);
  currentAccount.withdraw(1000.0);
}