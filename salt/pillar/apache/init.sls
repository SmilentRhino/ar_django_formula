{% set project_domain_name = pillar.get('project_domain_name', 'django_project') %}
project_domain_name: dev.node.a.r
apache:
  lookup:
    mod_wsgi: libapache2-mod-wsgi-py3
    default_charset: 'UTF-8'
  sites:
    {{ project_domain_name }}:
      enabled: True
      template_file: salt://django_project/files/django_project.tmpl
  modules:
    enabled:
      - wsgi


