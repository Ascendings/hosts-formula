{% from "hosts/map.jinja" import hosts_settings with context %}

/etc/hosts:
  file.managed:
    - source: salt://hosts/templates/hosts.jinja
    - user: {{ hosts_settings.file_owner }}
    - group: {{ hosts_settings.file_group }}
    - mode: {{ hosts_settings.file_mode }}
    - template: jinja