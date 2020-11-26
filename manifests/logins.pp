class ordering::logins {
  $admins  = { 
    'brad'   => { password => 'myPass123' },
    'monica' => { password => 'myPass123' },
    'luke'   => { password => 'myPass123' },
    'zack'   => { password => 'sqlPass123' },
  }

  $admins.each |String $user, Hash $params| {
    sqlserver::login { $user:
      ensure   => present,
      password => $params['password'],
    }
  }
}
