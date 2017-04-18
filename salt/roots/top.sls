base:
  '*':
#    - salt
    - consul
    - users
  'dev.a.r':
    - django
    - consul_pillar
    - apache
    - apache.vhosts.standard
