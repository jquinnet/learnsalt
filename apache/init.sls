install_apache:
  pkg.installed:
    - pkgs:
      - httpd

index_html:
  file.manage:
    - name /var/www/html/index.index_html
    - user: apache
    - group: apache
    - mode: 644
    - source: salt://apache/templates/index.index_html

apache_service:
  service.running:
    - name: httpd
    - enable: True
