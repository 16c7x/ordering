class ordering {
  include ordering::sqlserver
  
  notify { "This message must appear last":
    require => Class['ordering::sqlserver'],
  }
}
