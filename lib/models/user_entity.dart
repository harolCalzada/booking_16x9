class UserEntity {
  // final String name;
  // final String lastName;
  String email;
  String password;
  UserProfileEntity? profile;

  // final String phone;
  // final String district;

  UserEntity({
    //   this.name,
    // this.lastName,
    required this.email,
    required this.password,
    this.profile,

    // this.phone,
    // this.district
  });
  Map<String, dynamic> toJson() {
    return {
      // 'name': name,
      // 'lastName': lastName,
      'email': email,
      'password': password,
      // 'phone': phone,
      // 'district': district
    };
  }
}

UserEntity convertDynamicToUserEntity(dynamic data) {
  return UserEntity(
    // name: data['name'],
    // lastName: data['lastName'],
    email: data['email'],
    password: data['password'],
    // phone: data['phone'],
    // district: data['district'],
  );
}

class UserProfileEntity {
  String? userId;
  String firstName;
  String lastName;
  String email;
  String phone;
  String district;

  UserProfileEntity({
    this.userId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.district,
  });
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'district': district
    };
  }
}
