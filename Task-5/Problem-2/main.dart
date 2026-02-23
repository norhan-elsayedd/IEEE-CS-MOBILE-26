import 'client.dart';
import 'bankAccount.dart';

void main() {
  Client client =Client(991316,"Ali Mohamed Nabil");

  BankAccount acc1 =BankAccount(73740192,"Current", 25000, "EGP");
  BankAccount acc2 =BankAccount(73700438, "Saving", 1800, "USD");

  client.addAccount(acc1);
  client.addAccount(acc2);
  acc1.deposit(1500);
  acc2.withdraw(5000);
  acc2.withdraw(300);

  print("\nFinal Data:");
  client.printClientInfo();
}