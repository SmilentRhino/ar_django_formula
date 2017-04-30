base:
  '*':
#    - salt
    - apt
    - consul
    - users
  'dev':
    - django
    - consul_pillar
#    - apache
#    - apache.mod_wsgi
#    - mod_wsgi
#    - apache.vhosts.standard
    - git
  'jenkins':
    - jenkins
    - postfix
