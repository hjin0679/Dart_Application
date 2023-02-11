void main() {
  //------------- var -------------
  // 함수나 메소드 내부에 지역 변수를 생성할 때 var를 사용
  // var을 사용하는걸 권장한다.
  var name = '허';
  name = "Heo";

  //class에서 변수나 property를 선언할 때 타입 지정
  String name1 = '진';
  name1 = 'Jin';
  print('$name $name1');

  //------------- dynamic -------------
  //dynamic은 필요할 때만 사용
  // 변수에 지정을 안해주면 변수의 형태는 dynamic.
  // 어떤것이든 될 수 있다.
  var name3;
  name3 = 'nico';
  name3 = 12;
  name3 = true;

  dynamic name4;
  //name4. -> name4의 타입을 모르기 때문에 .을 사용했을 때 메소드가 많지 않다.
  if (name4 is String) {
    // 이 조건을 통해 조건문 안에서 name4가 String 이란 걸 안다.
    //name4. -> name4의 타입이 String 이기 때문에 메소드가 많다.
  }
  if (name4 is int) {
    // name4. -> name4의 타입은 int
  }

  //------------- null safety -------------
  //null safety는 어떤 변수, 혹은 데이터가 null이 될 수 있음을 명시
  String? nico = 'nico'; // ? 를 통해 nico라는 변수가 String, null이 될 수 있다.
  nico = null;
  if (nico != null) {
    nico.length; // nico가 null이 아님을 확인하고 메소드 사용 가능
  }
  nico?.isNotEmpty; // 위 조건문과 같은 역할. null이 아니면 메소드 사용

  //------------- final -------------
  // 정의된 변수를 수정할 수 없게 만들 때 사용
  final String name5 = 'nico'; // final뒤에 타입 명시 가능(필수x)
  name5 = 'nico'; // 수정 불가능

  // ------------- late -------------
  // 초기 데이터 없이 변수 지정 가능하게 만들어주는 역할 fianl, var 앞에 사용
  // 필요한 데이터를 모를 때 (api데이터를 받아올 때) 사용
  late final String name6;
  // api에서 데이터를 받아온 뒤 선언 해 놓은 변수에 저장
  name6 = 'nico';
  print(name6); // 데이터를 저장하기 전에는 출력 불가능

  // ------------- const -------------
  // 컴파일 할 때 알고 있는 값에 사용
  // 앱스토어에 앱을 올리기 전에 값을 알고 있을 때 사용
  const name7 = 'nico';
  name7 = '12'; // final과 똑같은 역할 : 수정 불가능
}
