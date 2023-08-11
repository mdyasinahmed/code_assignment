void main() {
  // list of item prices
  List<double> pricesList = [12.99, 8.75, 21.50, 5.00];

  // TAX Rate according to given value
  double taxRate = 0.08;

  // storing sum
  double sum = 0;
  for(double price in pricesList) {
    sum += price;
  }

  // operating & printing total cost
  double tax = sum*taxRate;
  double total = sum+tax;

  print("Total Cost: \$${total.toStringAsFixed(2)}");
}
