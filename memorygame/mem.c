#include "std/io.h"  // Inclui a biblioteca para operações de entrada/saída.
#include "std/string.h"  // Inclui a biblioteca para manipulação de strings.

void inicializarTabuleiro(int linhas, int colunas, int tabuleiro[][8], int visivel[][8])
{
    int pares[65];  // Array para armazenar os pares de números.
    int total_pares = linhas * colunas / 2;  // Calcula o total de pares no tabuleiro.
    int indice = 0;  // Índice para controle no array 'pares'.
    int indice2 = 0;  // Segundo índice para controle no array 'pares'.

    // Preenche o array 'pares' com os números dos pares.
    for (int i = 1; i <= total_pares; i++)
    {
        indice = 2 * i - 1;
        indice2 = 2 * i - 2;
        pares[indice] = i;
        pares[indice2] = pares[indice];
    }

    int temp;  // Variável temporária para troca de valores.

    // Embaralha os valores no array 'pares'.
    for (int pass = 0; pass < 5; pass++) // 'embaralhar'
    {
        for (int i = 0; i < total_pares * 2; i++)
        {
            int j = (i * 17 + pass) % (total_pares * 2);
            int temp = pares[i];
            pares[i] = pares[j];
            pares[j] = temp;
        }
    }

    int index = 0;  // Índice para percorrer o array 'pares'.

    // Inicializa o tabuleiro com os pares embaralhados e define 'visivel' como 0.
    for (int i = 0; i < linhas; i++)
    {
        for (int j = 0; j < colunas; j++)
        {
            tabuleiro[i][j] = pares[index++];
            visivel[i][j] = 0;
        }
    }
}

void exibirTabuleiro(int linhas, int colunas, int tabuleiro[][8], int visivel[][8])
{
    prints("\n");
    if (colunas > 7)
    {
        prints("       ");  // Imprime espaços para formatação.
    }
    else
    {
        prints("          ");  // Imprime espaços para formatação.
    }

    // Imprime os números das colunas.
    for (int i = 0; i < colunas; i++)
    {
        char s[6];
        itos(i, s, 10);  // Converte o número da coluna para string.
        prints("   ");
        prints(s);  // Imprime o número da coluna.
    }
    prints("\n");  
    prints("\n");  

    // Imprime o conteúdo do tabuleiro.
    for (int i = 0; i < linhas; i++)
    {
        char s[6];
        itos(i, s, 10);  // Converte o número da linha para string.
        if (colunas > 7)
        {
            prints("      ");  // Imprime espaços para formatação.
        }
        else
        {
            prints("         ");  // Imprime espaços para formatação.
        }
        prints(s);  // Imprime o número da linha.
        printc(' ');  // Imprime um espaço.

        // Verifica se o elemento do tabuleiro deve ser visível ou não e imprime de acordo.
        for (int j = 0; j < colunas; j++)
        {
            if (visivel[i][j] != 0)
            {
                char s2[6];
                itos(tabuleiro[i][j], s2, 10);  // Converte o número do tabuleiro para string.
                prints("  ");
                prints(s2);  // Imprime o número do tabuleiro.
                prints(" ");
            }
            else
            {
                prints("  ? ");  // Imprime um '?' para indicar que a posição não foi revelada.
            }
        }
        prints("\n");  
        prints("\n");  
    }
}

void main()
{
    int linhas;
    int colunas;
    int jogar_nov = 1;  // Variável para controlar se o jogador deseja jogar novamente.
    prints("\n\n         ----Jogo da Memoria----\n\n");  // Imprime cabeçalho do jogo.
    prints("      Aperte uma tecla para comecar.\n");  // Solicita iniciar o jogo.
    getc();  // Obtém um caractere do usuário para iniciar o jogo.
    sfill(0);  // Limpa o buffer de entrada.
    __cursor = 0;  // Reseta o cursor.

    // Loop principal do jogo.
    while (jogar_nov == 1)
    {
        // Loop para obter número de linhas válido.
        do
        {
            prints("Digite o numero de linhas (entre 2 e 8): ");
            linhas = getc() - '0';  // Obtém número de linhas do usuário.
            sfill(0);  // Limpa o buffer de entrada.
            __cursor = 0;  // Reseta o cursor.
        } while (linhas < 1 || linhas > 8);  // Continua pedindo até que o valor seja válido.

        // Loop para obter número de colunas válido.
        do
        {
            prints("Digite o numero de colunas (entre 2 e 8): ");
            colunas = getc() - '0';  // Obtém número de colunas do usuário.
            sfill(0);  // Limpa o buffer de entrada.
            __cursor = 0;  // Reseta o cursor.
        } while (colunas < 1 || colunas > 8);  // Continua pedindo até que o valor seja válido.

        // Verifica se o produto de linhas e colunas é par.
        while (linhas * colunas % 2 != 0)
        {
            prints("Numero de linhas x numero de colunas deve ser par.\n");
            prints("Aperte uma tecla para continuar.\n");
            getc();  // Obtém um caractere do usuário para continuar.
            sfill(0);  // Limpa o buffer de entrada.
            __cursor = 0;  // Reseta o cursor.
            prints("Digite o numero de linhas (entre 2 e 8):");
            linhas = getc() - '0';  // Obtém número de linhas do usuário.
            sfill(0);  // Limpa o buffer de entrada.
            __cursor = 0;  // Reseta o cursor.
            prints("Digite o numero de colunas (entre 2 e 8):");
            colunas = getc() - '0';  // Obtém número de colunas do usuário.
            sfill(0);  // Limpa o buffer de entrada.
            __cursor = 0;  // Reseta o cursor.
        }

        int tabuleiro[8][8];  // Declaração do tabuleiro do jogo.
        int visivel[8][8];  // Declaração da matriz de visibilidade das cartas.
        int x1;  // Variáveis para armazenar a posição da primeira carta escolhida.
        int y1;
        int x2;  // Variáveis para armazenar a posição da segunda carta escolhida.
        int y2;
        int acertos = 0;  // Contador de pares acertados pelo jogador.

        inicializarTabuleiro(linhas, colunas, tabuleiro, visivel);  // Inicializa o tabuleiro do jogo.

        // Loop principal do jogo enquanto o jogador não acertar todos os pares.
        while (acertos < linhas * colunas / 2)
        {
            exibirTabuleiro(linhas, colunas, tabuleiro, visivel);  // Exibe o tabuleiro atual.

            int escolhaValida = 0;  // Flag para controlar se a escolha do jogador é válida.
            
            // Loop para obter a primeira carta escolhida pelo jogador.
            while (escolhaValida == 0)
            {
                prints("Escolha a primeira carta (linha coluna):");
                x1 = getc() - '0';  // Obtém a linha escolhida pelo jogador.
                y1 = getc() - '0';  // Obtém a coluna escolhida pelo jogador.
                sfill(0);  // Limpa o buffer de entrada.
                __cursor = 0;  // Reseta o cursor.

                // Verifica se a posição escolhida é válida.
                if (x1 < 0 || x1 >= linhas || y1 < 0 || y1 >= colunas)
                {
                    prints("Posicao invalida! Tente novamente.\n");
                    prints("Aperte uma tecla para continuar.\n");
                    getc();  // Obtém um caractere do usuário para continuar.
                    sfill(0);  // Limpa o buffer de entrada.
                    __cursor = 0;  // Reseta o cursor.
                }
                else
                {
                    escolhaValida = 1;  // Marca a escolha como válida.
                    visivel[x1][y1] = 1;  // Marca a carta como visível.
                }
            }

            exibirTabuleiro(linhas, colunas, tabuleiro, visivel);  // Exibe o tabuleiro após a escolha.

            escolhaValida = 0;  // Reinicia a flag de escolha válida.
            
            // Loop para obter a segunda carta escolhida pelo jogador.
            while (escolhaValida == 0)
            {
                prints("Escolha a segunda carta (linha coluna): ");
                x2 = getc() - '0';  // Obtém a linha escolhida pelo jogador.
                y2 = getc() - '0';  // Obtém a coluna escolhida pelo jogador.
                sfill(0);  // Limpa o buffer de entrada.
                __cursor = 0;  // Reseta o cursor.

                // Verifica se a posição escolhida é válida.
                if (x2 < 0 || x2 >= linhas || y2 < 0 || y2 >= colunas)
                {
                    prints("Posicao invalida! Tente novamente.\n");
                }
                else
                {
                    escolhaValida = 1;  // Marca a escolha como válida.
                    visivel[x2][y2] = 1;  // Marca a carta como visível.
                }
            }

            exibirTabuleiro(linhas, colunas, tabuleiro, visivel);  // Exibe o tabuleiro após a escolha.

            prints("Digite uma tecla para avancar:");
            getc();  // Obtém um caractere do usuário para continuar.

            sfill(0);  // Limpa o buffer de entrada.
            __cursor = 0;  // Reseta o cursor.

            // Verifica se as duas cartas escolhidas pelo jogador formam um par.
            if (tabuleiro[x1][y1] == tabuleiro[x2][y2])
            {
                prints("Voce encontrou um par!\n");
                acertos++;  // Incrementa o contador de pares acertados.
            }
            else
            {
                prints("Tente novamente.\n");
                visivel[x1][y1] = 0;  // Oculta a primeira carta escolhida.
                visivel[x2][y2] = 0;  // Oculta a segunda carta escolhida.
            }

            prints("\n");  
        }

        prints("Parabens! Voce completou o jogo.\n");  // Mensagem de parabéns ao completar o jogo.
        prints("\n");  
        prints("\n");  
        prints("         ******   \n");
        prints("       *        * \n");
        prints("       *  O  O  * \n");
        prints("       *    ^   * \n");
        prints("       *  \\___/ * \n");
        prints("       *        * \n");
        prints("         ******   \n");
        prints("Deseja jogar novamente?(1- Sim, 0- Nao)");  // Pergunta se deseja jogar novamente.
        jogar_nov = getc() - '0';  // Obtém a resposta do usuário (1 para Sim, 0 para Não).
        printc('\n');  // Imprime um caractere de nova linha.
        acertos = 0;  // Reinicia o contador de acertos.
        inicializarTabuleiro(linhas, colunas, tabuleiro, visivel);  // Reinicializa o tabuleiro para um novo jogo.
    }
}
