consul:
  service: True
  config:
    bind_addr: 192.168.33.11
    data_dir: /var/consul
    retry_join:
      - 192.168.33.10
