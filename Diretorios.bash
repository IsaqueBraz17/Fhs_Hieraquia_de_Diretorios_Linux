sudo su            # vira root (pede sua senha)

cd /               # raiz do sistema
cd  ..             #Sair do diretório atual

ls                 # listar arquivos e diretórios

cd /bin   && ls    # binários essenciais
cd /boot  && ls    # kernel e bootloader
cd /dev   && ls    # dispositivos
cd /etc   && ls    # configurações
cd /home  && ls    # usuários
cd /lib   && ls    # bibliotecas
cd /media && ls    # mídias removíveis
cd /mnt   && ls    # montagens manuais
cd /opt   && ls    # software opcional
cd /proc  && ls    # processos (virtual)
cd /root  && ls    # home do root
cd /run   && ls    # dados de runtime
cd /sbin  && ls    # binários de administração
cd /srv   && ls    # dados de serviços
cd /sys   && ls    # hardware/drivers (virtual)
cd /tmp   && ls    # temporários
cd /usr   && ls    # programas e dados de usuário
cd /var   && ls    # dados variáveis (logs, cache...)

pwd          # mostra onde você está
cd ..        # sobe um nível
cd -         # volta para a pasta anterior
ls -la       # lista com detalhes e arquivos ocultos
tree -L 1 /  # visão geral da raiz (se tiver o tree instalado)
exit         # sai do modo root