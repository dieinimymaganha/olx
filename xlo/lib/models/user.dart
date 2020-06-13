enum UserType {PARTICULAR, PROFESSIONAL}
class User {

  User({this.name, this.email, this.password, this.phone, this.userType});

  String name;
  String email;
  String password;
  String phone;
  UserType userType = UserType.PARTICULAR;

}