class UserModel {
  final String id;
  final String fullname;
  final String email;
  final bool isPremiumMember;
  final int imagesCount;
  final int unreadMsgCount;

  UserModel(
      {required this.id,
      required this.fullname,
      required this.email,
      required this.isPremiumMember,
      required this.imagesCount,
      required this.unreadMsgCount});
}
