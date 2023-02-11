class Player {
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main() {
  var nico = Player(name: 'nico', xp: 1200, team: 'red')
    // var potat = nico -> ..앞에 class가 있으면 곧바로 그 class를 가리킨다
    ..name = 'las'
    ..xp = 120000
    ..team = 'blue'
    ..sayHello(); // ..을 사용하여 반복되는 객체 이름부분을 대체 가능하다

  /* 위와 동일한 코드
  var nico = Player(name: 'nico', xp: 1200, team: 'red');
  nico.name = 'las';
  nico.xp = 120000;
  nico.team = 'blue';
  */
}
