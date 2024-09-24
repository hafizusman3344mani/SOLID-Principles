/*

which states that high-level modules must not depend on low-level modules without an abstraction.
That’s a lot, but as an example, it’s quite easy to understand.

*/

abstract interface class Auth {
  void signup();
  void login();
}

class NetworkAuth implements Auth {
  @override
  void login() {
    print('Login user with server');
  }

  @override
  void signup() {
    print('Signup user with server');
  }
}
