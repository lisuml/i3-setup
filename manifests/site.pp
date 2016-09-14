# Set following variables adjusting to your needs
$username = ''

package { 'i3': ensure => 'present' }

file { "/home/${username}/.xinitrc":
  content => 'exec i3',
}
