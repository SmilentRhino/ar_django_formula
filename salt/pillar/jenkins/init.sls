jenkins:
  lookup:
    jenkins_port: 8080
    port: 80
    home: /var/lib/jenkins
    user: jenkins
    group: www-data
    server_name: localhost
    master_url: http://192.168.33.11:8080
    stable: True
    plugins:
      timeout: 90
      installed:
        - greenballs
    pkgs:
      - jenkins
