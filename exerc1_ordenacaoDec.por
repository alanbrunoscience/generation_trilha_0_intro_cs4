programa
{
    funcao inicio()
    {
        inteiro numeros[] = {2, 5, 1, 3, 4, 9, 7, 8, 10, 6}
        inteiro tamanho = 10

        escreva("Vetor original: ")
        imprimeVetor(numeros, tamanho)

        quicksort(numeros, 0, tamanho - 1)

        escreva("\nVetor ordenado: ")
        imprimeVetor(numeros, tamanho)
    }

    funcao vazio quicksort(inteiro numeros[], inteiro indiceInicial, inteiro indiceFinal)
    {
        se (indiceInicial < indiceFinal)
        {
            inteiro pivo = particiona(numeros, indiceInicial, indiceFinal)
            quicksort(numeros, indiceInicial, pivo - 1)
            quicksort(numeros, pivo + 1, indiceFinal)
        }
    }

    funcao inteiro particiona(inteiro numeros[], inteiro indiceInicio, inteiro indiceFim)
    {
        inteiro pivo = numeros[indiceFim]
        inteiro i = indiceInicio - 1
        para (inteiro j = indiceInicio; j < indiceFim; j++)
        {
            se (numeros[j] >= pivo)
            {
                i++
                inteiro temp = numeros[i]
                numeros[i] = numeros[j]
                numeros[j] = temp
            }
        }
        inteiro temp = numeros[i + 1]
        numeros[i + 1] = numeros[indiceFim]
        numeros[indiceFim] = temp
        retorne i + 1
    }

    funcao vazio imprimeVetor(inteiro vetor[], inteiro tamanho)
    {
        para (inteiro i = 0; i < tamanho; i++)
        {
            escreva(vetor[i], " ")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */