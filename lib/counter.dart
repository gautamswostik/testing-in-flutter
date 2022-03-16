import 'package:testing/ola.dart';

class Counter {
  int value = 0;

  void increment() => value++;

  void decrement() => value--;

  String getWeekDay(int dateTime) {
    switch (dateTime) {
      case 7:
        return "Sunday";
      case 1:
        return "Monday";
      case 2:
        return "Tuesday";
      case 3:
        return "Wednesday";
      case 4:
        return "Thursday";
      case 5:
        return "Friday";
      case 6:
        return "Saturday";
      default:
        return "";
    }
  }

  String getMonthName(int month) {
    switch (month) {
      case 1:
        return "January";
      case 2:
        return "February";
      case 3:
        return "March";
      case 4:
        return "April";
      case 5:
        return "May";
      case 6:
        return "June";
      case 7:
        return "July";
      case 8:
        return "August";
      case 9:
        return "September";
      case 10:
        return "October";
      case 11:
        return "November";
      case 12:
        return "December";
      default:
        return "";
    }
  }

  String getGreet(DateTime now) {
    if (now.hour >= 5 && now.hour < 12) {
      return "Good Morning!";
    } else if (now.hour >= 12 && now.hour < 17) {
      return "Good Afternoon!";
    } else if (now.hour >= 17 && now.hour < 21) {
      return "Good Evening!";
    } else {
      return "Good Night!";
    }
  }

  ReturningCLass returnDetail() {
    const ola =  ReturningCLass(
      name: 'ossy',
      surName: 'osborn',
      age: 68,
    );
    //! THis can be done by making Class items non final
    // final ola = ReturningCLass()
    //   ..name = "Ola"
    //   ..surName = "Nordmann"
    //   ..age = 25;

    return ola;
  }
}
