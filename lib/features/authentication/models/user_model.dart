class UserModel {
  final String? id;
  final String fullName, email, password, phoneNo;

  UserModel(
      { this.id,
      required this.fullName,
      required this.email,
      required this.password,
      required this.phoneNo});

  toJson(){
    return{
      'FullName': fullName,
      'Email':email,
      'Phone':phoneNo,
      'Password':password,
    };
  }
}
