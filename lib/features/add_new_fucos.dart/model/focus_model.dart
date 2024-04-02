class FocusModel {
  String id;
  String title;
  String description;
  String period;
  String color;

  FocusModel({
    required this.id,
    required this.title,
    required this.description,
    required this.period,
    required this.color,
  });

  // from json > for make deserliztion
  factory FocusModel.fromJson(Map<String, dynamic> json) {
    return FocusModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      period: json['period'],
      color: json['color'],
    );
  }

  // to json > for make serliztion
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'period': period,
      'color': color,
    };
  }
}
