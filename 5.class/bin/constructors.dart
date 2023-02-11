class Player {
  // 클래스 내에서는 반드시 자료형 명시
  final String name;
  int xp, age;
  String team;

  Player(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age}); // constructor method를 작성할 때는 클래스와 같은 이름으로 사용

  // ------------------------ named Constructors ------------------------
  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age, // 콜론(:)을 사용하여 Player 클래스를 초기화
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    // 메소드 생성
    print("Hi my name is $name");
  }
}

void main() {
  var player = Player.createBluePlayer(
    // named parameter로 하기위해 생성자의 변수를 {}로 처리한다.
    name: "nico",
    age: 21,
  );
  var redPlayer = Player.createRedPlayer("nico", 21);
}
