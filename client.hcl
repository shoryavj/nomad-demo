# Increase log verbosity
log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/client"


# Give the agent a unique name. Defaults to hostname
name = "client"
# Enable the client
client {

    gc_disk_usage_threshold = 100
    enabled = true
    options {
      "driver.raw-exec.enable" = "1"
    }
    # For demo assume we are talking to server1. For production,
    # this should be like "nomad.service.consul:4647" and a system
    # like Consul used for service discovery.
    servers = ["192.168.100.12:4647"]
}

# Modify our port to avoid a collision with server
ports {
    http = 5656
}
plugin "raw_exec" {
  config {
    enabled = true
  }
}
