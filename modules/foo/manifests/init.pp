class foo (
  $environment
) inherits python_common {


  case $environment {
    development: {
    }
    staging: {
    }
    production: {
    }
  }

  $user = "foo"
  $group = "foo"

  user { $user:
    ensure  => present,
    home    => "/home/${user}",
  }

  group { $group:
    ensure  => present,
  }

}