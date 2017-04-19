{% set project_name = pillar.get('project_name', 'django_project')  %}

python.packages:
  pkg.installed:
    - pkgs:
      - python3
      - python3-dev
      - python3-pip
      - python-pip

virtualenv:
  pip.installed:
    - name: virtualenv
    - bin_env: /usr/bin/pip3
    - require:
      - pkg: python.packages

/usr/local/venvs/{{ project_name }}:
  virtualenv.managed:
    - python: /usr/bin/python3
    - system_site_packages: False
    - requirements: /var/www/{{ project_name }}/requirements.txt
