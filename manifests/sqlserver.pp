class ordering::sqlserver {
  contain ordering::config
  contain ordering::logins
  contain ordering::users

  Class['ordering::config'] ->
    Class['ordering::logins'] ->
    Class['ordering::users']
}
