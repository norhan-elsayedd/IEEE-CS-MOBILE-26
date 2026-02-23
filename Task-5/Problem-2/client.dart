import 'bankAccount.dart';

class Client {
  int _clientNumber;
  String _clientName;
  List<BankAccount> _accounts = [];

  Client(this._clientNumber, this._clientName);

  void addAccount(BankAccount account) {
    _accounts.add(account);
  }

  void printClientInfo() {
    print("Client Number: $_clientNumber");
    print("Client Name: $_clientName");

    print("\nAccount details:");
    for (var acc in _accounts) {
      acc.printAccountInfo();
      print("\n");
    }
  }
}