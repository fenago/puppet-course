node 'update-nodename' {
  file { '/tmp/apply.txt':
    content => "File created using puppet apply!\n",
  }
}
