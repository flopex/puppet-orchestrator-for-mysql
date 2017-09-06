#
class orchestrator::my_cnf inherits orchestrator {
  $topology_erb = 'orchestrator/topology_creds.cnf.erb'
  $srv_erb = 'orchestrator/srv_creds.cnf.erb'

  file { $orchestrator::topology_cnf:
    content => template($topology_erb),
    mode    => '0644',
  }
  file { $orchestrator::srv_cnf:
    content => template($srv_erb),
    mode    => '0644',
  }
}
