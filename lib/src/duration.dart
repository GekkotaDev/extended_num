extension IntegerDuration on int {
  Duration get days => Duration(days: this);
  Duration get hours => Duration(hours: this);
  Duration get minutes => Duration(minutes: this);
  Duration get seconds => Duration(seconds: this);
  Duration get milliseconds => Duration(milliseconds: this);
  Duration get microseconds => Duration(microseconds: this);

  Duration get day => days;
  Duration get hour => hours;
  Duration get minute => minutes;
  Duration get second => seconds;
  Duration get millisecond => milliseconds;
  Duration get microsecond => microseconds;

  /// Convert the given [int]eger into a Duration object.
  as(DurationOf duration) {
    return switch (duration) {
      DurationOf.days => days,
      DurationOf.hours => hours,
      DurationOf.minutes => minutes,
      DurationOf.seconds => seconds,
      DurationOf.milliseconds => milliseconds,
      DurationOf.microseconds => microseconds,
    };
  }
}

/// NOTE: Calling the respective [Duration] object's inX methods results in them
/// being returned as [int]s. This is a behaviour of the [Duration] object as
/// implemented by the Dart language itself and thus is out of this library's
/// control.
extension FloatDuration on double {
  Duration get days {
    if (this % 1 != 0) return (this * 24).hours;

    return Duration(days: round());
  }

  Duration get hours {
    if (this % 1 != 0) return (this * 60).minutes;

    return Duration(hours: round());
  }

  Duration get minutes {
    if (this % 1 != 0) return (this * 60).seconds;

    return Duration(minutes: round());
  }

  Duration get seconds {
    if (this % 1 != 0) return (this * 1000).milliseconds;

    return Duration(seconds: round());
  }

  Duration get milliseconds {
    if (this % 1 != 0) return (this * 1000)._microseconds;

    return Duration(milliseconds: round());
  }

  Duration get _microseconds {
    return Duration(microseconds: round());
  }
}

/// The unit of time the integer represents itself as.
enum DurationOf {
  days,
  hours,
  minutes,
  seconds,
  milliseconds,
  microseconds,
}
