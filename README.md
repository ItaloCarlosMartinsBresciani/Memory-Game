Instruções para baixar e jogar o jogo:

1) Baixe a pasta memorygame

2-1)
Caso linux:
execute o comando ./sim.sh mem.c no terminal.
Caso windows:
abra a pasta no vscode, abra um terminal pelo wsl e execute o comando ./sim.sh mem.c

2-2) Se houver algum problema na abertura do jogo, exexemplo:
./sim.sh: No such file or directory
Utilize os comandos: 
chmod +x ./sim.sh
chmod +x ./bin/mnt
chmod +x ./bin/sim
caso não tenha alguma das bibliotecas, utilize os seguitnes comandos:
sudo apt-get update
sudo apt install libgtk2.0-0
sudo apt install libsdl2-dev
Em seguida execute novamente o comando: ./sim.sh mem.c

3)
Link do vídeo sobre o jogo:
https://youtu.be/fpsbbN8ggeU
Link do vídeo sobre a instrução que fizemos para o simulador do processador:
https://youtu.be/VxvuIvGgWv0

Bônus)
Inicialmente, tentamos fazer um xadrez em C para ser compilado em Assembly, 
no entanto, lidamos com problemas com registradores exaustos, isso pois o xadrez
necessita de diversas verificações para funcionar, seja para ver se o rei esta em xeque ou xeque-mate,
se as peças estão sendo utilizadas de forma correta e etc, o que pede diversas funções rodando ao mesmo tempo,
essas que precisam de diversos parâmetros para a análise.
Desse modo, no compilador atual, os parâmetros das funções são passados para os registradores e, em função
das diversas funções que são chamadas ao mesmo tempo uma dentro da outra, o número de parâmetros é muito grande no total,
em nossas primeiras tentativas, tivemos 1300 registradores exaustos.
Uma solução para esse problema seria fazer uma alteração no código, tornando as variáveis locais em globais
e parar de passa-las como parâmetros pelas funções, ou alterar o compilador para fazer mais uso da stack
e menos dos registradores.
O código do xadrez finalizado em C se encontra no link abaixo:
https://github.com/Fugant1/Xadrez-em-C/tree/main




