class ordering::config {
  sqlserver_instance { 'MSSQLSERVER':
    features              => ['SQL'],
    source                => 'D:',
    sql_sysadmin_accounts => ['Administrator'],
    #sa_pwd                => 'Puppetlabs!',
  }

  sqlserver::config { 'MSSQLSERVER':
    admin_login_type => 'WINDOWS_LOGIN',
    require          => Sqlserver_instance['MSSQLSERVER'],
  }

  sqlserver::database { 'mydb11':
    ensure  => present,
    require => Sqlserver::Config['MSSQLSERVER'],
  }
}
