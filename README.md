# 🐧 Linux File System Hierarchy

Este repositório contém minhas anotações e estudos práticos sobre a Hierarquia do Sistema de Arquivos do Linux (FHS).

## 🔄 Diferença Básica: Windows vs Linux

*   **Windows (`C:\`):** Cada aplicação costuma ter sua parte isolada, com bibliotecas instaladas de forma totalmente independente.
*   **Linux (`/`):** Adota uma abordagem de compartilhamento de bibliotecas. Toda a estrutura nasce a partir de um diretório raiz (o `/`), e tudo fica atrelado a ele.

## 📂 Estrutura de Diretórios (FHS)

| Diretório | Função Principal |
| :--- | :--- |
| `/bin` | **Binários:** Comandos básicos e executáveis essenciais para todos os usuários. |
| `/boot` | **Boot:** Arquivos necessários para inicializar o sistema (ex: kernel `vmlinuz`, `initramfs`, `grub2`, arquivos da pasta `efi`). |
| `/dev` | **Devices:** Dispositivos do sistema (todo dispositivo de hardware tem uma entrada aqui). |
| `/etc` | **Configurações:** Arquivos de configuração globais do sistema e das aplicações. |
| `/home` | **Usuários:** Armazena os arquivos pessoais de cada usuário comum. |
| `/lib` | **Bibliotecas:** Bibliotecas essenciais do sistema e módulos do kernel. |
| `/media` | **Mídia:** Ponto de montagem automático para dispositivos removíveis (pendrives, etc). |
| `/mnt` | **Mount:** Ponto de montagem para dispositivos de arquivos temporários. |
| `/opt` | **Opcional:** Diretório para instalar pacotes de softwares externos/terceiros. |
| `/root` | **Root:** Diretório pessoal (home) do superusuário (administrador). |
| `/sbin` | **System Binaries:** Binários e comandos de administração exclusivos do sistema/root. |
| `/srv` | **Serviços:** Dados de serviços específicos fornecidos pelo sistema. |
| `/tmp` | **Temporários:** Arquivos temporários que podem ser apagados no reboot. |
| `/usr` | **User:** Aplicações, bibliotecas e arquivos instalados para uso dos usuários. |
| `/var` | **Variáveis:** Arquivos que mudam de tamanho constantemente (logs do sistema, caches). |

## 💻 Prática e Comandos (Terminal)

### Acesso e Navegação Remota
```bash
# 1. Acessar a máquina (ex: via Vagrant)
vagrant ssh

# 2. Escalar privilégios para superusuário (root)
sudo su

# 3. Acessar o diretório raiz
cd /

# 4. Listar diretórios disponíveis na raiz
ls

# 5. Listar informações detalhadas do diretório /bin (e não de seu conteúdo)
ls -ld bin/

# 6. Listar todos os arquivos com detalhes e permissões
ls -l
ls -la # Mostra arquivos ocultos também
