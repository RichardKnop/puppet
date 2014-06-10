# foo.dev.something.net
node /^foo\d*\.dev\d*\.(.*)$/ {

  class { 'foo':
    environment => 'development',
  }

}

# foo.staging.something.net
node /^foo\d*\.staging\d*\.(.*)$/ {

  class { 'foo':
    environment => 'staging',
  }

}

# foo.prod.something.net
node /^foo\d*\.prod\d*\.(.*)$/ {

  class { 'foo':
    environment => 'production',
  }

}