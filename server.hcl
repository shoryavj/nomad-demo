log_level = "DEBUG"

# Setup data dir
data_dir = "/tmp/server"
bind_addr  = "192.168.100.12"

advertise {
  # Defaults to the first private IP address.
  http = "192.168.100.12"
  rpc  = "192.168.100.12"
  serf = "192.168.100.12:4648" # non-default ports may be specified
}


# Enable the server
server {
    enabled = true
     

    # Self-elect, should be 3 or 5 for production
    bootstrap_expect = 1
}


