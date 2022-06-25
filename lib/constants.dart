enum Environment { dev, staging, prod }

class Constants {
  static late Map<String, dynamic> _config;

  static void setEnvironment(Environment env) {
    switch (env) {
      case Environment.dev:
        _config = _Config.debugConstants;
        break;
      case Environment.staging:
        _config = _Config.qaConstants;
        break;
      case Environment.prod:
        _config = _Config.prodConstants;
        break;
    }
  }

  static get serverOne {
    return _config[_Config.serverOne];
  }

  static get serverTwo {
    return _config[_Config.serverTwo];
  }

  static get whereAmI {
    return _config[_Config.whereAmI];
  }
}

class _Config {
  static const serverOne = "serverOne";
  static const serverTwo = "serverTwo";
  static const whereAmI = "whereAmI";

  static Map<String, dynamic> debugConstants = {
    serverOne: "localhost:3000/",
    serverTwo: "localhost:8080/",
    whereAmI: "local",
  };

  static Map<String, dynamic> qaConstants = {
    serverOne: "https://staging1.example.com/",
    serverTwo: "https://staging2.example.com/",
    whereAmI: "staging",
  };

  static Map<String, dynamic> prodConstants = {
    serverOne: "https://github.com/",
    serverTwo: "https://flutter.io/",
    whereAmI: "prod"
  };
}