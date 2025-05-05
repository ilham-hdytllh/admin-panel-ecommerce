class AuthenticationRequestSignin {
  final String email;
  final String password;

  const AuthenticationRequestSignin({
    required this.email,
    required this.password,
  });

  factory AuthenticationRequestSignin.fromJson(Map<String, dynamic> json) {
    return AuthenticationRequestSignin(
      email: (json['email'] ?? '').toString().trim(),
      password: (json['password'] ?? '').toString().trim(),
    );
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
