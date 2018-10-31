FROM osixia/openldap

MAINTAINER Antonio de Barros <antonio.barros@ufrr.br>

RUN apt-get update \
    && apt-get install -y wget net-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/lib/ldap && chown openldap:openldap /var/lib/ldap

# schemas
RUN wget https://svn.rnp.br/repos/CAFe/conf/openldap/slapd -O /etc/default/slapd --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/conf/openldap/slapd.conf -O /etc/ldap/slapd.conf --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/conf/openldap/ldap.conf -O /etc/ldap/ldap.conf --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/conf/openldap/DB_CONFIG -O /var/lib/ldap/DB_CONFIG --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/schemas/openldap/eduperson.schema -O /etc/ldap/schema/eduperson.schema --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/schemas/openldap/breduperson.0.0.6.schema -O /etc/ldap/schema/breduperson.0.0.6.schema --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/schemas/openldap/schac-20061212-1.3.0 -O /etc/ldap/schema/schac-20061212-1.3.0 --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/schemas/openldap/samba.schema -O /etc/ldap/schema/samba.schema --no-check-certificate \ 
    && mkdir /scripts \
    && wget https://svn.rnp.br/repos/CAFe/conf/ssl/openssl.cnf -O /scripts/openssl.cnf --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/scripts/openldap/popula.sh -O /scripts/popula.sh --no-check-certificate \
    && wget https://svn.rnp.br/repos/CAFe/scripts/homologacao/clientes/cafe-homolog-ldap.sh -O /scripts/cafe-homolog-ldap.sh --no-check-certificate \
    && chmod +x /scripts/*.sh

