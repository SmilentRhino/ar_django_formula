{% set project_name = pillar.get('project_name', 'django_project')  %}
{% set project_user = pillar.get('project_user', 'alexrhino')  %}

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

/home/{{ project_user }}/venvs/{{ project_name }}:
  virtualenv.managed:
    - user: {{ project_user }}
    - python: /usr/bin/python3
    - system_site_packages: False
    - requirements: salt://{{ project_name }}/files/{{ project_name }}_requirements.txt
    - require:
      - user: {{ project_user }}
