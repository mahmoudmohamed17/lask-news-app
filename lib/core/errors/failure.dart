class Failure {
  final String message;

  Failure({required this.message});
}

class FirebaseServerFailure extends Failure {
  FirebaseServerFailure({required super.message});
}

class ApiServerFailure extends Failure {
  ApiServerFailure({required super.message});
}
