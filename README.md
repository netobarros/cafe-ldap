# CAFe

Imagem para criar containers com LDAP usando o esquema brEduPerson para uso no projeto CAFe

# Variáveis ENV

DOMINIO_INST: domínio para a base LDAP, que será a referência da base ($RAIZ_BASE_LDAP)

SENHA_ADMIN: senha para o DN cn=admin,$RAIZ_BASE_LDAP

SENHA_LEITOR_SHIB: senha para o DN cn=leitor-shib,$RAIZ_BASE_LDAP

DEBUG_LEVEL: nível de mensagem para debug do slapd (padrão está 1024)

# Exemplo de uso

`docker run -e DOMINIO_INST="instituicao.br" -e SENHA_ADMIN="1234" -v ldap-config:/etc/ldap -v ldap-base:/var/lib/ldap -p 389:389 -p 636:636 cafe-ldap`

Este comando criará a base dc=instituicao,dc=br populado com os dados gerados do script /scripts/popula.sh

# Observações

* O script /scripts/start.sh faz as substituições das variáveis $HOSTNAME e $RAIZ_BASE_LDAP na primeira execução. Não é necessário alterar os arquivos de configuração
* A variável $DOMINIO_INST deve ser preenchida conforme o comando de exemplo descrito anteriormente
* $RAIZ_BASE_LDAP é preenchida automaticamente de acordo com a variável $DOMINIO_INST
* Os scripts referenciados no roteiro que ficam em /tmp estão em /scripts dentro do container

# Sobre o CAFe

* https://www.rnp.br/servicos/servicos-avancados/cafe

# Referência:

* https://wiki.rnp.br/pages/viewpage.action?pageId=69968769
