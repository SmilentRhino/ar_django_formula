python-pip:
  pkg.installed

python-consul:
  pip.installed:
    - require:
      - pkg: python-pip
