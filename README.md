# Vacinas com Login

Uma aplicação de exemplo que gerencia ou controla as vacinas de um animal doméstico. Utiliza autenticação do usuário por meio do Spring Security. Aplicação criada usando as tecnologias JSF e JPA. Baseada no Java 8.

# Banco de dados

O banco de dados deve ser preparado para a aplicação ser rodada. Então, executar os seguintes _scripts_:
* [Criação](src/docs/criacao.sql) do banco
* [Inicialização](src/docs/inserts.sql) dos dados do banco

## Configurações

Há diferenças de configurações, dependendo da versão do MySQL instalada.

### Versão 5.X
No pom.xml considere usar a seguinte dependência:

```
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.49</version>
</dependency>
```

No persistence.xml considere usar a seguinte configuração de driver:

`<property name="javax.persistence.jdbc.driver" value="com.mysql.jdbc.Driver"/>`

### Versão 8.X

No pom.xml considere usar a seguinte dependência:

```
<dependency>
    <groupId>com.mysql</groupId>
    <artifactId>mysql-connector-j</artifactId>
    <version>8.0.33</version>
</dependency>
```

No persistence.xml considere usar a seguinte configuração de driver:

`<property name="javax.persistence.jdbc.driver" value="com.mysql.cj.jdbc.Driver"/>`

# Usando a aplicação

Para testar a aplicação, considere fazer o login com um dos usuários a seguir, inseridos na inicialização dos dados do banco.

Fulano de Tal
* Login: 91999991111 ou fulano@seila.com.br
* Senha: a
* Perfil: Administrador

Beltrano Jr
* Login: 91999992222 ou beltrano@seila.com.br
* Senha: a
* Perfil: Veterinário

Ciclano da Silva
* Login: 91999993333 ou ciclano@seila.com.br
* Senha: a
* Perfil: Usuário ou Secretário