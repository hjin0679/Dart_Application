abstract class Human {
  void walk();
}

class doctor extends Human {
  void walk() {
    print("docter is walking");
  }
}

class Player extends Human {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    // 추상 클래스 내의 특정 메소드를 반드시 구현해야 한다
    print("im walking");
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player(name: 'jin', xp: 0, team: "blue");
  var dt = doctor();
  dt.walk();
  player.walk();
}
