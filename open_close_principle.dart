/*

An entity should be open for extensions but closed for modification.
It states that for good practise you should be able to add new features 
without modifying the existing code.

*/

abstract interface class Result {
  void showResult();
}

class EnglishResult implements Result {
  @override
  void showResult() {
    print('English Result');
  }
}

class Mathematics implements Result {
  @override
  void showResult() {
    print('Maths Result');
  }
}
