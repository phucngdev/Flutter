// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Wards {
  String id;
  String? name;
  String? level;
  Wards({
    required this.id,
    this.name,
    this.level,
  });

  Wards copyWith({
    String? id,
    String? name,
    String? level,
  }) {
    return Wards(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
    };
  }

  factory Wards.fromMap(Map<String, dynamic> map) {
    return Wards(
      id: map['id'] as String,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Wards.fromJson(String source) =>
      Wards.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Wards(id: $id, name: $name, level: $level)';

  @override
  bool operator ==(covariant Wards other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.level == level;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ level.hashCode;
  String? districtId;
}
