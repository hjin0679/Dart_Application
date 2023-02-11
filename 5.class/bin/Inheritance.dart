class Human {
  final String name;
  Human(this.name);

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name); // Player을 생성할 때 입력한 name을 부모 클래스의 name으로

  @override // 상속받은 Human클래스의 sayHello 메소드 재정의
  void sayHello() {
    super.sayHello();
    print('and I play for $team');
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'nico',
  );
}
