class UserModel {
  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? uId;

  UserModel({
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.uId,
  });

  UserModel.fromJson(Map<String, dynamic> jsonUser) {
    firstName = jsonUser['first_name'];
    lastName = jsonUser['last_name'];
    email = jsonUser['email'];
    phoneNumber = jsonUser['phone_number'];
    uId = jsonUser['uId'];
  }

  Map<String , dynamic> userToMap()
   {
     return
       {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone_number': phoneNumber,
      'uId': uId,
    };
   }
}