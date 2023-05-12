# Fix 500 error when a GET request is sent to an Apache server.

exec { 'fix-wordpress':
  provider => shell,
  command  => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
}
