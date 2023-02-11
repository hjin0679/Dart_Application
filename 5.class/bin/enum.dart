enum Team { red, blue } // "" 사용할필요 x
// enum은 실수하지 않도록 도와주는 타입

class Player {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: Team.blue);
  var potato = nico
    ..name = 'las'
    ..xp = 1200000
    ..team = Team.blue
    ..sayHello();
}
