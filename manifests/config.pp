class ordering::config {
  sqlserver_instance { 'MSSQLSERVER':
    features              => ['SQL'],
    source                => 'C:/Users/Administrator/Downloads/SQLServer2019-DEV-x64-ENU',
    sql_sysadmin_accounts => ['Administrator'],
    sa_pwd                => 'Puppetlabs!',
  }

  sqlserver::config { 'MSSQLSERVER':
    admin_login_type => 'WINDOWS_LOGIN',
    require          => Sqlserver_instance['MSSQLSERVER'],
  }

  sqlserver::database { 'mydb':
    ensure  => present,
    require => Sqlserver::Config['MSSQLSERVER'],
  }
}