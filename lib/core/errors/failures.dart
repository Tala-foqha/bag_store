// core/errors/failures.dart
abstract class Failure{
final String message;

  Failure(this.message);  
}
class ServerFailure extends Failure{
  ServerFailure(super.message);

}