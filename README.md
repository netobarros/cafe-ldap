# CAFe

Imagem para criar containers com LDAP padronizado para uso no projeto CAFe

# Variáveis ENV
DOMINIO_INST: domínio para a base LDAP, que será a referência da base ($RAIZ_BASE_LDAP)

SENHA_ADMIN: senha para o DN cn=admin,$RAIZ_BASE_LDAP

DEBUG_LEVEL: nível de mensagem para debug do slapd

# Exemplo de uso

`docker run -e DOMINIO_INST="exemplo.edu.br" -e SENHA_ADMIN="1234" -p 389:389 -p 636:636 cafe-ldap`

# Sobre o CAFe

* https://www.rnp.br/servicos/servicos-avancados/cafe

# Referência:

* https://wiki.rnp.br/pages/viewpage.action?pageId=69968769
