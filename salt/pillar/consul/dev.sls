consul:
  service: true
  version: 0.8.1
  config:
    server: true
    bind_addr: 192.168.33.10
    client_addr: 0.0.0.0
    data_dir: /var/consul
    bootstrap_expect: 1
    ui: True
    datacenter: 'a'
    domain: 'r'
    retry_join:
      - 192.168.33.11

ext_pillar:
  - consul: my_consul_config
