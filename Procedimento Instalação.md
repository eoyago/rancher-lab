## Criação maquinas AWS via terraform

Instalar Terraform:

```
sudo curl -o terraform_1.3.9_linux_amd64.zip https://releases.hashicorp.com/terraform/1.3.9/terraform_1.3.9_linux_amd64.zip \
&& sudo unzip -o terraform_1.3.9_linux_amd64.zip -d /usr/local/bin

```

Crie um arquivo ~/.aws/credentials em seu diretório de usuário (no Linux ou macOS) ou C:\Users\USERNAME\.aws\credentials (no Windows) e adicione as seguintes linhas ao arquivo:

[default]
aws_access_key_id = your_access_key_id
aws_secret_access_key = your_secret_access_key
Substitua your_access_key_id e your_secret_access_key pelas suas próprias credenciais da AWS.

Para verificar se as credenciais estão corretas basta utilizar o comando:
terraform plan

Se as credenciais estiverem corretas irá aparecer o preview do que irá subir na AWS

Para aplicar as configurações de fato, o comando utilizado é o :

terraform apply

## Conectar nas maquinas da AWS

Acesse via interface o menu do EC2 na amazon, e localize as instancias criadas, em seguida, clique sobre elas e pegue o ip

## Instalar Docker

```
sudo su

curl https://releases.rancher.com/install-docker/20.10.sh | sh

usermod -aG docker ubuntu

```
## Instalar Rancher

```
docker run -d --restart=unless-stopped \
-p 80:80 -p 443:443 \
--privileged \
rancher/rancher:latest
```