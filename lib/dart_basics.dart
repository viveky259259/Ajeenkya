void main() {
  //variables
  //classes
  //functions
  //inheritance
  //loops
  //conditions

  var name = false;
  final String name1 = 'Vivek';
  const bool isLoggedIn = false;
  int hey = 1;
  double what = 100;

  Student student = Student('Vivek');
}

class Student {
  final String name1;
  static const int age = 10;

  Student(this.name1);

  int calculateMarks() {
    int count = 300;

    return 100;
  }

//for

}

class Diksha extends Student {
  Diksha(String name1) : super(name1);
}
