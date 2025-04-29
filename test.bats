#!/usr/bin/env bats

@test "ansible playbook displays the hello message" {
  # Run the ansible playbook and capture output
  run ansible-playbook playbook.yaml -v

  # Verify that the output contains the expected message
  [[ "$output" == *"Hello from Ansible!👋"* ]]
}
