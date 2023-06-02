# Script do shell crontab do linux


Primeiro passo: pegaremos o script abaixo criado para imprimir as informações na tela.

![image](https://github.com/gabiel98/script_do_shell_crontab_do_linux/assets/100876842/86a9b6d4-d31a-4cf9-9834-88b781f8d45f)

Segundo passo: Abriremos o Comando *crontab -e*.

![image](https://github.com/gabiel98/script_do_shell_crontab_do_linux/assets/100876842/de609cab-de1c-46aa-895b-17d48c490832)

Terceiro passo: Colocar o comando abaixo dentro do *crontab -e*.

![image](https://github.com/gabiel98/script_do_shell_crontab_do_linux/assets/100876842/2050e506-942e-4238-8de3-cadfd677d2b3)

Esse comando é para que o crontab execute o script (extra.sh) no arquivo "arquivo.log" a cada 5 minutos.

Quarto passo: Já que estou no "wsl ubuntu 22.04" eu vou abrir um segundo terminal para executar outro comando.

![image](https://github.com/gabiel98/script_do_shell_crontab_do_linux/assets/100876842/d4d3b5cf-1bb5-4d71-a4dc-43e1c4703aeb)

O comando *tail* vai usado para que permita exibir as últimas linhas de um arquivo de texto. Ele é útil para visualizar rapidamente as últimas alterações em um arquivo de log ou qualquer outro arquivo de texto. No caso do exemplo acima será no "arquivo.log"

O uso da opção -f (follow) permite monitorar as alterações no arquivo em tempo real. O tail -f exibirá as últimas linhas do arquivo e permanecerá em execução, atualizando automaticamente a saída sempre que novas linhas forem adicionadas ao arquivo.

Na imagem abaixo ja está funcionando o crontab a cada 5 minutos:

![image](https://github.com/gabiel98/script_do_shell_crontab_do_linux/assets/100876842/c82eaa55-4434-4cb4-bcd4-c80d2b0997d0)

