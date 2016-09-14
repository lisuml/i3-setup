# Set following variables adjusting to your needs
$username = 'michal'
$group = 'users'

if $username == '' {
  fail('$username cannot be empty.')
}

package { ['i3', 'openssh', 'vim']: ensure => 'present' }

file { "/home/${username}/.xinitrc":
  owner   => $username,
  group   => $group,
  content => 'exec i3',
}

file { "/home/${username}/.vimrc":
  owner  => $username,
  group  => $group,
  source => 'puppet:///modules/manjaro_i3/dot.vimrc',
}
