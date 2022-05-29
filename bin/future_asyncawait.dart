void main() async {
  var p = Person();
  print("Job 1");
  print('Job 2');
  print("Job 3");
  p.getData();
  print("Job 5");
  print("Job 6");
  p.getDataAsync().then((_) {
    print("Job 7:" + p.name);
  });
  print("Job 8");
  print("Job 9");
  p.getOrder();
  print("Job 10");
  print("Job 11");
}

class Person {
  String name = "default name";

  void getData() {
    name = "Joko";
    print("getData $name is Done");
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 5));
    name = "Tono";
    print("getData $name is Done");
  }

  Future getOrder() async {
    await Future.delayed(Duration(seconds: 5));
    print("Coffee Bobba");
  }
}
