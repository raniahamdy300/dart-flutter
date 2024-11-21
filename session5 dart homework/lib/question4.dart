// 4. OOP, Constructors, and Methods
// Create a class `BankAccount` with:
// - Properties: `String accountHolder`, `double balance`.
// - A constructor to initialize the properties.
// - Methods:
// - `deposit(double amount)` to add to the balance.
// - `withdraw(double amount)` to subtract from the balance (ensure sufficient funds).
// - `getDetails()` to print the account holder's name and balance.
// Create an instance, perform some transactions, and print the account details.
// Goal: Learn OOP concepts like constructors, methods, and object manipulation.

void main() {
  double totalbalance;
  BankAccount account1 = BankAccount(accountHolder: 'mona', balance: 2000);
  totalbalance = account1.deposite(2300);
  totalbalance = account1.withdraw(5000, totalbalance);
  account1.getDetails(totalbalance);
}

class BankAccount {
  String accountHolder;
  double balance = 0;

  BankAccount({required this.accountHolder, required this.balance});

  double deposite(double amount) {
    double totalbalance = this.balance + amount;
    print(
        'Dear ${this.accountHolder}, your account has been credited with $amount and your total balance EGP $totalbalance');
    return totalbalance;
  }

  double withdraw(double amount, double totalbalance) {
    if (totalbalance > amount) {
      totalbalance = totalbalance - amount;
      print(
          'Dear ${this.accountHolder}, your account haas been withdrawn with $amount EGP and yout tatal balance $totalbalance');
      return totalbalance;
    } else {
      print('Not enough money to withdraw');
      return totalbalance;
    }
  }

  void getDetails(double totalbalance) {
    print('Hi, ${this.accountHolder}, your balance = ${totalbalance}');
  }
}
