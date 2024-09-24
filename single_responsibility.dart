/*

As it’s clear from its name single responsible.
A class should only be responsible for one thing that
means a class could change for only one reason.

*/

class Result {
  void checkResult(int rollNo) {
    bool isValidRollNo = RollNoValidation.checkIfRollNoIsValid(rollNo);
    if (isValidRollNo) {
      ResultModel result = NetworkService.searchResult(rollNo);
      DisplayResult.displayResult(result);
    } else {
      print('Roll no is not valid');
    }
  }
}

class RollNoValidation {
  static bool checkIfRollNoIsValid(int rollNo) {
    return true;
  }
}

class NetworkService {
  static ResultModel searchResult(int rollNo) {
    ResultModel resultModel = ResultModel();
    return resultModel;
  }
}

class DisplayResult {
  static void displayResult(ResultModel result) {
    print('Result displayed');
  }
}

class ResultModel {}
