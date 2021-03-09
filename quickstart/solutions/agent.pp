node 'update-nodename' {
  file { '/tmp/agent.txt':
    content => "File created on puppet agent node by puppet master!\n",
  }
}
