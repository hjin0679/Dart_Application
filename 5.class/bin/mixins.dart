class String {
  final double strenghtLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

class Player with String, QuickRunner, Tall {
  // with 사용, 다른 클래스의 변수와 메소드를 가져온다
  // 여러 클래스에 재사용 가능
  // 생성자가 없는 클래스면 가능
}
