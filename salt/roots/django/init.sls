{% set project_name = pillar.get('project_name', 'django_project')  %}
{% set project_user = pillar.get('project_user', 'alexrhino')  %}

python.packages:
  pkg.installed:
    - pkgs:
      - python3
      - python3-dev
      - python3-pip

virtualenv:
  pip.installed:
    - name: virtualenv
    - bin_env: /usr/bin/pip3
    - require:
      - pkg: python3-pip

/usr/local/venvs/{{ project_name }}:
  virtualenv.managed:
    - user: {{ project_user }}
    - system_site_packages: False
    - requirements: salt://{{ project_name }}/{{ project_name }}_requirements.txt
    - require:
      - user: {{ project_user }}
