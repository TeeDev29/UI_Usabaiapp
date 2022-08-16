class Logo {
  // final int userId;
  final String id;
  final String logo;

  const Logo({
    // required this.userId,
    required this.id,
    required this.logo,
  });

  factory Logo.fromJson(Map<String, dynamic> json) {
    return Logo(
      // userId: json['userId'],
      id: json['id'],
      logo: json['logo'],
    );
  }
}