class Celsius {
  final num temperature;

  const Celsius(this.temperature);

  num get toFahrenheit {
    return (temperature * (9 / 5)) + 32;
  }

  num get toKelvin {
    return temperature + 273.15;
  }
}

class Fahrenheit {
  final num temperature;

  const Fahrenheit(this.temperature);

  num get toCelsius {
    return (temperature - 32) * (5 / 9);
  }

  num get toKelvin {
    return toCelsius + 273.15;
  }
}

class Kelvin {
  final num temperature;

  const Kelvin(this.temperature);

  num get toCelsius {
    return temperature - 273.15;
  }

  num get toFahrenheit {
    return toCelsius * (9 / 5) + 32;
  }
}

extension Temperature on num {
  Celsius get degreesCelsius => Celsius(this);
  Fahrenheit get degreesFahrenheit => Fahrenheit(this);
  Kelvin get degreesKelvin => Kelvin(this);
}
