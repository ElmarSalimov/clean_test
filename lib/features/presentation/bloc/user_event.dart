class UserEvent {}

class GetUser extends UserEvent {
  final int id;
  GetUser(this.id);
}
