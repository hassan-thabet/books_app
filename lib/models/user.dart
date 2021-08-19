class User
{
   String? firstName;
   String? lastName;
   String? email;
   String? phone;
   String? uId;


  User({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.uId,
  });

  User.fromJson(Map<String , dynamic> jsonUser)
  {
    firstName = jsonUser['firstName'];
    lastName = jsonUser['lastName'];
    email = jsonUser['email'];
    phone = jsonUser['phone'];
    uId = jsonUser['uId'];
  }

   Map<String , dynamic> userToMap()
   {
     return
       {
         'firstName' : firstName,
         'lastName' : lastName,
         'email' : email,
         'phone' : phone,
         'uId' : uId,

       };
   }
}