plan linux_install::all(TargetSpec $targets) {
  run_plan('linux_install::update_apt', {'targets' => $targets})
  run_plan('linux_install::zsh', {'targets' => $targets})
  run_plan('linux_install::az_cli', {'targets' => $targets})
  run_plan('linux_install::bin', {'targets' => $targets})
  run_plan('linux_install::starship', {'targets' => $targets})
  run_plan('linux_install::tailscale', {'targets' => $targets})
}
