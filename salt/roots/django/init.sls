{% set project_name = pillar.get('project_name', '')  %}
{% set project_user = pillar.get('project_user', '')  %}

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

{% if project_name %}
/home/{{ project_user }}/{{ project_name }}_env:
  virtualenv.managed:
    - python: /usr/bin/python3
    - system_site_packages: False
    - user: {{ project_user }}
{% endif %}
