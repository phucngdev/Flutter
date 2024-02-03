import 'package:flutter_application_3/modals/province.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Province', () {
    test('should serialize to JSON and deserialize back', () {
      final originalProvince = Province(id: '1', name: 'Test', level: 'High');

      final jsonString = originalProvince.toJson();
      final deserializedProvince = Province.fromJson(jsonString);

      assert(deserializedProvince == originalProvince);
    });

    test('copyWith should create a new object with modified properties', () {
      final originalProvince = Province(id: '1', name: 'Test', level: 'High');
      final modifiedProvince = originalProvince.copyWith(name: 'Updated');

      assert(modifiedProvince.id == originalProvince.id);
      assert(modifiedProvince.name == 'Updated');
      assert(modifiedProvince.level == originalProvince.level);
    });

    test('fromMap should create a Province object from a map', () {
      final map = {'id': '1', 'name': 'Test', 'level': 'High'};
      final province = Province.fromMap(map);

      assert(province.id == '1');
      assert(province.name == 'Test');
      assert(province.level == 'High');
    });

    test('toMap should convert a Province object to a map', () {
      final province = Province(id: '1', name: 'Test', level: 'High');
      final map = province.toMap();

      assert(map['id'] == '1');
      assert(map['name'] == 'Test');
      assert(map['level'] == 'High');
    });

    test('toString should return a string representation of Province', () {
      final province = Province(id: '1', name: 'Test', level: 'High');
      final stringRepresentation = province.toString();

      assert(
        stringRepresentation == 'Province(id: 1, name: Test, level: High)',
      );
    });

    test('equality operator should correctly compare two Province objects', () {
      final province1 = Province(id: '1', name: 'Test', level: 'High');
      final province2 = Province(id: '1', name: 'Test', level: 'High');
      final province3 = Province(id: '2', name: 'Test', level: 'High');

      assert(province1 == province2);
      assert(province1 != province3);
    });

    test('hashCode should return a consistent hash code for Province', () {
      final province1 = Province(id: '1', name: 'Test', level: 'High');
      final province2 = Province(id: '1', name: 'Test', level: 'High');

      assert(province1.hashCode == province2.hashCode);
    });
  });
}
