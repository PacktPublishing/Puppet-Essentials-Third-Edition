$enable_real = $enable ? {
  Boolean => $enable,
  String  => str2bool($enable),
  Default => fail('Unsupported value for ensure. Expected either bool or string.'),
}

