void main() {
  String name = "nico";
  bool alive = true;
  int age = 12;
  double money = 69.99;

//num 은 int, double의 부모 class
  num x = 12;
  x = 1.1;

  //-------------------- list --------------------
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // collection if : giveMeFive = true 일 때 요소에 5를 추가
  ];
  //print(numbers);

  //List<int> numbers = [1, 2, 3, 4]; 와 동일 class를 다룰 때 자료형 명시

  // String interpolation : text에 변수를 추가하는 방법
  var name1 = 'Jin';
  var age1 = 10;
  var greeting = 'Hello everyone, my name is $name1 and I\'m ${age1 + 2}';
  print(greeting); // $기호 뒤에는 반드시 변수, 연산을 필요로 하면 $뒤에 {}를 사용

  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends)
      "❤️ $friend", // collection for : 다른 list를 추가할 때 사용(다른 문장을 덧붙여 사용 가능)
  ];
  print(newFriends);

  //-------------------- Map --------------------
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  Map<List<int>, bool> player1 = {
    [1, 2, 3, 5]: true
  };

  //-------------------- Set --------------------
  //set에 속한 모든 아이템은 유니크하다 : 같은 요소는 하나씩만 존재
  var numbers2 = {1, 2, 3, 4}; //Set<int> = {1, 2, 3, 4}; 와 동일
  numbers2.add(1);
  numbers2.add(1);
  numbers2.add(1); // 1을 여러번 추가해도 중복되어 결과에는 추가되지 않음
  print(numbers2);
}
