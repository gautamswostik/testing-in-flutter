import 'package:flutter_test/flutter_test.dart';
import 'package:testing/functions_for_test.dart';

void main() {
  group(
    'The function',
    () {
      test(
        'Should return 6',
        () {
          int val = sum(5, 5);
          expect(val, 10);
        },
      );

      test(
        'Should retrun Monday',
        () {
          String day = getWeekDay(1);
          expect(day, 'Monday');
        },
      );

      test(
        'Should return June',
        () {
          String month = getMonthName(6);
          expect(month, 'June');
        },
      );

      test(
        'Should return Good Afternoon!',
        () {
          String greet = getGreet(DateTime.now());
          expect(greet, 'Good Afternoon!');
        },
      );
    },
  );
}
