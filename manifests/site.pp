# Set following variables adjusting to your needs
$username = 'michal'
$group = 'users'

if $username == '' {
  fail('$username cannot be empty.')
}

### Magic starts here ###

# vim
package { 'vim': ensure => 'present' }

file { "/home/${username}/.vimrc":
  owner  => $username,
  group  => $group,
  source => 'puppet:///modules/manjaro_i3/dot.vimrc',
}

# i3
package { 'i3': ensure => 'present' }

file { "/home/${username}/.xinitrc":
  owner   => $username,
  group   => $group,
  content => 'exec i3',
}

# openssh
package { 'openssh': ensure => 'present' }

