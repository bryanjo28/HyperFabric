class Bank {
  int id;
  String name;
  String beneficiary;
  String statusName;
  int status;
  String nominal;
  Bank(this.id, this.name, this.beneficiary, this.statusName, this.status,
      this.nominal);
}

List<Bank> banks = [
  Bank(1, "PT BANK MANDIRI", "Kraken", "Active", 1, "Rp 250.000.000"),
  Bank(2, "PT BANK BCA", "Apple", "Inactive", 0, "Rp 300.000.000"),
  Bank(3, "PT BANK NIAGA", "Razer", "Active", 1, "Rp 200.000.000"),
  Bank(4, "PT BANK BCA", "Logitech", "Inactive", 0, "Rp 100.000.000"),
  Bank(5, "PT BANK BNI", "Steelseries", "Active", 1, "Rp 50.000.000"),
  Bank(5, "PT BANK OCBC", "Steelseries", "Active", 1, "Rp 1.000.000.000"),
];
