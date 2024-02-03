// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Districts {
  String id;
  String? name;
  String? level;
  String? provinceId;
  Districts({
    required this.id,
    this.name,
    this.level,
    this.provinceId,
  });

  Districts copyWith({
    String? id,
    String? name,
    String? level,
    String? provinceId,
  }) {
    return Districts(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      provinceId: provinceId ?? this.provinceId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'level': level,
      'provinceId': provinceId,
    };
  }

  factory Districts.fromMap(Map<String, dynamic> map) {
    return Districts(
      id: map['id'] as String,
      name: map['name'] != null ? map['name'] as String : null,
      level: map['level'] != null ? map['level'] as String : null,
      provinceId:
          map['provinceId'] != null ? map['provinceId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Districts.fromJson(String source) =>
      Districts.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Districts(id: $id, name: $name, level: $level, provinceId: $provinceId)';
  }

  @override
  bool operator ==(covariant Districts other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.level == level &&
        other.provinceId == provinceId;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ level.hashCode ^ provinceId.hashCode;
  }
}
