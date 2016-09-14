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
## pacman packages
package { [
  'acpi',
  'adobe-source-code-pro-fonts',
  'clipit',
  'compton',
  'dash',
  'feh',
  'gsimplecal',
  'i3',
  'i3lock',
  'imagemagick',
  'notify-osd',
  'pcmanfm',
  'redshift',
  'rxvt-unicode',
  'scrot',
]:
  ensure  => 'present',
}

file { "/home/${username}/.xinitrc":
  owner   => $username,
  group   => $group,
  content => 'exec i3',
}

# openssh
package { 'openssh': ensure => 'present' }

