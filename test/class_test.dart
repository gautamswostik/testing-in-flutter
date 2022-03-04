import 'package:flutter_test/flutter_test.dart';
import 'package:testing/counter.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('value should be incremented', () {
      final counter = Counter();

      counter.increment();

      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      final counter = Counter();

      counter.decrement();

      expect(counter.value, -1);
    });
    test('Should retrun Monday', () {
      final counter = Counter();

      String day = counter.getWeekDay(1);
      expect(day, 'Monday');
    });

    test('Should retrun June', () {
      final counter = Counter();

      String month = counter.getMonthName(6);
      expect(month, 'June');
    });
  });
}

/**test(
    'The Value should be Incremented',
    () {
      final counter = Counter();
      counter.increment();

      expect(counter.value, 1);
    },
  ); */