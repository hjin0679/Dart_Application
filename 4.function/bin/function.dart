String sayHello(String name) => "Hello $name nice to meet you!";
// 한줄짜리 함수일 때=> 뒤 문장을 바로 리턴

String sayHello1({
  // named argument 를 사용하기 위해 {}사용
  // null safety가 적용되어 있어 1.초깃값을 적용, 2. required modifier를 사용하여 필수값으로 지정
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

//optional positional parameter
String sayHello2(String name, int age, [String? country = 'cuba']) =>
    "Hello $name, you are $age years old from $country";

// ?? 은 왼쪽값이 null이면 오른쪽값 리턴 왼쪽값이 null이 아니면 왼쪽값 리턴
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

//---------------------typedef---------------------
// 자료형에 사용자만의 alias를 붙일 수 있다
typedef ListOfInts = List<int>; // 자료형의 별명을 만들때 사용

ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHello1(
    // named argument : 함수에 사용될 값이 무엇을 의미하는지 쉽게 확인할 수 있다
    // 작성할 때 순서 상관 x
    name: 'Jin',
    country: 'korea',
    age: 25,
  ));

  var results = sayHello2('nico', 2, 'cuba');
  print(results);

  // ??= 은 왼쪽값이 null이면 오른쪽값 값을 대입
  String? name1;
  name1 ??= 'nico';
}
