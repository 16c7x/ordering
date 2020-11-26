class ordering::users {
$admins  = { 
    'brad'   => { password => 'myPass123' },
    'monica' => { password => 'myPass123' },
    'luke'   => { password => 'myPass123' },
    'zack'   => { password => 'sqlPass123' },
  }

  $admins.each |String $user, Hash $params| {
    sqlserver::user { $user:
      ensure   => present,
      database => 'mydb14',
    }
  }
}
