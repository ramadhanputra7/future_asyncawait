void main() async {
  print('Getting Your Order');
  try {
    var order = await getOrder();
    print("Your order is $order");
  } catch (error) {
    print("sorry. $error");
  } finally {
    print("thank You");
  }
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
