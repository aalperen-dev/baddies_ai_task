class FriendModel {
  final String name;
  final String avatarUrl;

  FriendModel({required this.name, required this.avatarUrl});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FriendModel &&
          other.name == name &&
          other.avatarUrl == avatarUrl);

  @override
  int get hashCode => name.hashCode ^ avatarUrl.hashCode;

  @override
  String toString() => 'FriendModel(name: $name, avatarUrl: $avatarUrl)';
}
