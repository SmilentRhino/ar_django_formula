base:
  '*':
#    - salt
    - consul
    - users
  'dev.a.r':
    - django
    - consul_pillar
    - apache
    - apache.mod_wsgi
    - mod_wsgi
    - apache.vhosts.standard
    - git
  'jenkins.a.r':
    - jenkins
    - postfix
