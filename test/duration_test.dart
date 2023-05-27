import "package:extended_num/extended_num.dart";
import "package:test/test.dart";

void main() {
  group("integers", () {
    test("1 day is 24 hours", () {
      assert(1.day.inHours == 24);
    });

    test("1 hour is 60 minutes", () {
      assert(1.hour.inMinutes == 60);
    });

    test("1 minute is 60 seconds", () {
      assert(1.minute.inSeconds == 60);
    });

    test("1 second is 1000 milliseconds", () {
      assert(1.second.inMilliseconds == 1000);
    });

    test("1 millisecond is 1000 microseconds", () {
      assert(1.millisecond.inMicroseconds == 1000);
    });

    test("1000 microseconds is 1 millisecond", () {
      assert(1000.microseconds.inMilliseconds == 1);
    });

    test("1000 milliseconds is 1 second", () {
      assert(1000.milliseconds.inSeconds == 1);
    });

    test("60 seconds is 1 minute", () {
      assert(60.seconds.inMinutes == 1);
    });

    test("60 minutes is 1 hour", () {
      assert(60.minutes.inHours == 1);
    });

    test("24 hours is 1 day", () {
      assert(24.hours.inDays == 1);
    });

    test("1 minute is NOT 420 seconds", () {
      assert(1.minute.inSeconds != 420);
    });

    test("2 minutes is converted to seconds as a duration", () {
      Duration duration = 2.minutes.inSeconds.as(DurationOf.seconds);

      assert(duration.inSeconds == 120);
    });
  });

  /// NOTE: Calling the respective [Duration] object's inX methods results in them
  /// being returned as [int]s. This is a behaviour of the [Duration] object as
  /// implemented by the Dart language itself and thus is out of this library's
  /// control.
  group("floats", () {
    test("1.5 days is 36 hours", () {
      assert(1.5.days.inHours == 36);
    });

    test("1.5 hours is 90 minutes", () {
      assert(1.5.hours.inMinutes == 90);
    });

    test("1.5 minutes is 90 seconds", () {
      assert(1.5.minutes.inSeconds == 90);
    });

    test("1.5 seconds is 1500 milliseconds", () {
      assert(1.5.seconds.inMilliseconds == 1500);
    });

    test("1.5 milliseconds is 1500 microseconds", () {
      assert(1.5.milliseconds.inMicroseconds == 1500);
    });

    test("1500 microseconds is ~1 milliseconds", () {
      assert(1500.microseconds.inMilliseconds == 1);
    });

    test("1.5 minutes is NOT 420 seconds", () {
      assert(1.5.minutes.inSeconds != 420);
    });
  });
}
