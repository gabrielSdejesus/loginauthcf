# Loginauthcf

<h3>Descrição do projeto</h3>

O Loginauthcf é um projeto que visa criar um sistema de login utilizando as tecnologias CFML, jQuery, HTML5 e CSS3. O projeto utiliza a biblioteca jwtcfml para geração e autenticação de tokens JWT (JSON Web Tokens).

## Requisitos

- Docker CF11 ou CF instalado no computador.

## Instalação e Configuração

1. Certifique-se de ter o Docker CF11 instalado ou o CF instalado.
2. Clone o repositório do Loginauthcf em sua máquina local para dentro da pasta cfusion/wwwroot/.
3. Abra o seu navegador no link http://localhost:8500/loginauthcf/index.cfm
4. É necessário configurar uma "secret.key" nas suas varíaveis de ambiente dentro da cfusion/bin/jvm.config.
5. Coloque -Dsecret.key = "Sua chave", essa variável é usada dentro da pasta view/Auth.cfm.

OBS: Dependendo do IP e porta que estará rodando o servidor, irá mudar na hora de acessar o "localhost:8500".

## Tela de Login - Registrando e Logando

https://github.com/gabrielSdejesus/loginauthcf/assets/108988003/268e850c-fd5b-4036-b587-a6a227b70d04

## Tela de Login - Simulando algumas falhas na hora de logar e registrar conta.


https://github.com/gabrielSdejesus/loginauthcf/assets/108988003/aa0255cf-b5c3-42d0-a183-5eaf3894b37e


## Contribuição
Este projeto é de livre acesso e não possui uma licença específica. Você é livre para fazer modificações, melhorias e contribuições para o projeto.

## Autores
Gabriel de Jesus - [Git Jesus](https://github.com/gabrielSdejesus)
