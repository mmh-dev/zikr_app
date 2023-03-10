class Item {
  final String title;
  final String arabic;
  final String recited;
  final String reward;

  Item({required this.title, required this.arabic, required this.recited, required this.reward});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      title: json['title'],
      arabic: json['arabic'],
      recited: json['recited'],
      reward: json['reward'],
    );
  }
}