/etc/apt/sources.list:
  file.managed:
    - source: salt://apt/files/cn_sources.list
