# digitalocean-kubernetes-terraform

Provisionamento de um cluster Kubernetes na DigitalOcean usando Terraform e configurações modulares para projeto, VPC, rede, ingress, emissão de certificados e muito mais.

---

##  Estrutura do repositório

| Arquivo / Pasta            | Descrição |
|-----------------------------|-----------|
| `cluster.tf`                | Define o cluster Kubernetes (DigitalOcean Kubernetes Service – DOKS). |
| `vpc.tf`                    | Provisiona a VPC (rede privada) onde o cluster será criado. |
| `project.tf`                | Cria ou configura o projeto no DigitalOcean para agrupar recursos relacionados. |
| `locals.tf`                 | Definições locais (como nomes, regiões, regras etc.) reutilizados nos módulos. |
| `variables.tf`              | Declaração de variáveis do Terraform para configuração flexível. |
| `main.tf`                   | Arquivo principal que referencia os diferentes módulos e coordena o fluxo de infraestrutura. |
| `.github/workflows/`        | Pipelines de CI/CD configurados via GitHub Actions (se presentes). |
| `cluster-issuer/`           | Configurações para emissão de certificados TLS via cert-manager e ACME (Let's Encrypt). |
| `ingress/`                  | Recursos relacionados ao Ingress (controller, regras, deploy via Helm ou manifestos). |
| `README.md`                 | Este arquivo — documentação principal do repositório. |
| `LICENSE`                   | Licença MIT para o código. |

---

##  Objetivo

Este projeto automatiza o provisionamento de um cluster Kubernetes completo e seguro na DigitalOcean:

1. Cria a VPC e projeto no DigitalOcean.
2. Provisiona um cluster DOKS.
3. Configura Ingress (por exemplo, NGINX) e módulos de rede.
4. Implanta um controlador de ingresso via Helm ou outro método.
5. Configura emissão automática de certificados TLS com cert-manager e ACME (Let's Encrypt).
6. Facilita deploys de serviços e aplicações com domínio, TLS, ingress etc.

---

##  Pré-requisitos

- Terraform (versão mínima recomendada: `>= 1.x`)
- Conta na DigitalOcean com um _Personal Access Token_
- `doctl` ou configuração de variáveis de ambiente com o token (`TF_VAR_do_token` ou similar)

---

##  Como usar

### 1. Clonar o repositório

```bash
git clone https://github.com/bruno-leitao/digitalocean-kubernetes-terraform.git
cd digitalocean-kubernetes-terraform
