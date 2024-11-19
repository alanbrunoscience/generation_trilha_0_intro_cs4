programa
{
	
	funcao inicio()
	{

		inteiro numeros[10]
		inteiro tamanho = 10, sum = 0

		para(inteiro i = 0; i < tamanho; i++) {
			escreva("Informe o ", i+1, "º número: ")
			leia(numeros[i])
			sum += numeros[i]
		}

		limpa()

		escreva("Elementos nos índices ímpares:\n")
		para(inteiro i = 1; i <= tamanho; i = i + 2) {
			escreva(numeros[i], " ")
		}

		escreva("\n\nElemento pares:\n")
		para(inteiro i = 0; i < tamanho; i++) {
			se(numeros[i] % 2 == 0) {
				escreva(numeros[i], " ")	
			}
		}

		escreva("\n\nSoma:\n")
		escreva(sum)

		escreva("\n\nMédia:\n")
		escreva(sum/tamanho)
		
	}
}
