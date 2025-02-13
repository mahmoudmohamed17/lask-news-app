class UserEntity {
  final String name;
  final String email;

  UserEntity({required this.name, required this.email});

  factory UserEntity.fromJson(json) {
    return UserEntity(name: json['name'], email: json['email']);
  }
}
