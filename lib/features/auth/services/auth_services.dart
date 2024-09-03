class AuthServices {
  String username = 'KURT TIMAJO';
  String emailAddress = 'kurt@exmple.com';

  Future getUserDataService() async {
    return [username, emailAddress];
  }
}
