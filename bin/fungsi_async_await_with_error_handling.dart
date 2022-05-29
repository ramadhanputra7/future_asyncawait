void main() async {
  print("Getting Your Order");
  var order = await getOrder();
  print("Your Order is $order");
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 5), () {
    var isAvailable = true;
    if (isAvailable) {
      return "Coffe Boba";
    }
    throw "Your Order Is Out Of Stock";
  });
}
