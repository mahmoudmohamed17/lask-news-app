class Failure {
  final String message;

  Failure({required this.message});
}

class FirebaseServerFailure extends Failure {
  FirebaseServerFailure({required super.message});
}
