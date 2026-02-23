class BankAccount {
  int _accountNumber;
  String _accountType;
  double _balance;
  String _currency;

  BankAccount(this._accountNumber, this._accountType,this._balance, this._currency);

  int get accountNumber=>_accountNumber;
  String get accountType=>_accountType;
  double get balance=>_balance;
  String get currency=>_currency;

  void deposit(double amount) {
    _balance+=amount;
    print("Deposit successful,New Balance: $_balance $_currency");
  }

  void withdraw(double amount) {
    if (amount<=_balance) {
      _balance-=amount;
      print("Withdraw successful ,New balance: $_balance $_currency");
    } else {
      print("Withdraw Failed: Insufficient balance");
    }
  }

  void printAccountInfo() {
    print("Account Number:$_accountNumber");
    print("Account Type:$_accountType");
    print("balance:$_balance $_currency");
  }
}