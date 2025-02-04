class EnvironmentConfig {
  static const FLAVOR_NAME =
      String.fromEnvironment('FLAVOR_NAME', defaultValue: 'dev');
  static const API_URL = String.fromEnvironment(
    'API_URL',
    defaultValue: 'https://api.github.com',
  );
}
