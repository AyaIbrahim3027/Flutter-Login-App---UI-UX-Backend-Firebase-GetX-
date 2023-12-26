class LoginWithEmailAndPasswordFailure {
  final String message;

  LoginWithEmailAndPasswordFailure(
      [this.message = 'An Unknown error occurred']);

  factory LoginWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'wrong-password':
        return LoginWithEmailAndPasswordFailure(
            'Please enter a correct password.');

      case 'wrong-email':
        return LoginWithEmailAndPasswordFailure(
            'Please enter a correct email.');

      case 'operation-not-allowed':
        return LoginWithEmailAndPasswordFailure(
            'Operation is not allowed. Please contact support.');

      case 'user-disabled':
        return LoginWithEmailAndPasswordFailure(
            'This user has been disable. Please contact support for help.');

      default:
        return LoginWithEmailAndPasswordFailure();
    }
  }
}
