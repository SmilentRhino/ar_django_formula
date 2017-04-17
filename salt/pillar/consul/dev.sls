consul:
  service: true
  config:
    server: true
    bind_addr: 192.168.33.10
    data_dir: /var/consul
    bootstrap_expect: 1
    retry_join:
      - 192.168.33.11
