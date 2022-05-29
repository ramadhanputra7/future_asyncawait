void main() {
  getOrder().then((value) {
    print("Your Order is $value");
  }).catchError((error) {
    print("Sorry. $error");
  }).whenComplete(() {
    print("Thank You");
  });
  print("Getting Your Order");
}

Future getOrder() {
  return Future.delayed(Duration(seconds: 5), () {
    var isAvailable = true;
    if (isAvailable) {
      return "Coffe Boba";
    }
    throw "Coffee Is Out Of Stock";
  });
}
