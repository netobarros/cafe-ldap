FROM osixia/openldap

MAINTAINER Antonio de Barros <antonio.barros@ufrr.br>

RUN wget https://svn.rnp.br/repos/CAFe/conf/openldap/slapd -O /etc/default/slapd --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/conf/openldap/slapd.conf -O /etc/ldap/slapd.conf --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/conf/openldap/ldap.conf -O /etc/ldap/ldap.conf --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/conf/openldap/DB_CONFIG -O /var/lib/ldap/DB_CONFIG --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/schemas/openldap/eduperson.schema -O /etc/ldap/schema/eduperson.schema --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/schemas/openldap/breduperson.0.0.6.schema -O /etc/ldap/schema/breduperson.0.0.6.schema --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/schemas/openldap/schac-20061212-1.3.0 -O /etc/ldap/schema/schac-20061212-1.3.0 --no-check-certificate \
&& wget https://svn.rnp.br/repos/CAFe/schemas/openldap/samba.schema -O /etc/ldap/schema/samba.schema --no-check-certificate



