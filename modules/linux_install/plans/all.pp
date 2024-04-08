plan linux_install::all(TargetSpec $targets) {
  $plans = [
    'linux_install::update_apt',
    'linux_install::zsh',
    'linux_install::starship',
    'linux_install::rust',
    'linux_install::go',
    'linux_install::anaconda',
    'linux_install::az_cli',
    'linux_install::bin',
    'linux_install::tailscale',
  ]

  # parallelize($plans) |$plan| {
  $plans.each |$plan| {  
    run_plan($plan, {'targets' => $targets})
  }
}
