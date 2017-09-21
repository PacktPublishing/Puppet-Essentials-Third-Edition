class resolver {
  $localname = resolver()
  notify { "Without argument resolver returns local hostname: ${localname}": }
  $remotename = resolver('puppetlabs.com')
  notify { "With argument puppetlabs.com: ${remotename}": }
  $remoteip = resolver('8.8.8.8')
  notify { "With argument 8.8.8.8: ${remoteip}": }
}

