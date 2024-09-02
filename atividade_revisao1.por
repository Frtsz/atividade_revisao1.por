programa {
  funcao inicio() {
    //Declaração de variavel
    inteiro combustivel = 1, pagamento
    inteiro contGasolina =0 , contAlcool=0, contDiesel=0, contPix =0
    real litros 
    real acumuladorLucro = 0

    enquanto(combustivel != 0){

    //COLETA DE DADOS
      escreva("(1)Gasolina - (2)Alcool - (3)Diesel\n")
      leia(combustivel)

      escreva("Digite a quantidade de litros:\n")
      leia(litros)

      escreva("(1)CARTÃO - (2)DINEHIRO - (3)PIX\n")
      leia(pagamento)

      //PROCESSAMENTO
      se(combustivel == 1){
        contGasolina++
        acumuladorLucro = acumuladorLucro + (litros * 5.50)
      }
      senao se(combustivel == 2){
        contAlcool++
        acumuladorLucro = acumuladorLucro + (litros * 4.50)
      }
      senao se(combustivel == 3) {
        contDiesel++
        acumuladorLucro = acumuladorLucro + (litros * 6)
      }  

      se(pagamento == 3){
          contPix++
      }

    }
    //SAIDA DE DADOS
    escreva("A quantidade de pessoas que utilizaram PIX é de: ", contPix, "\n")
    escreva("O lucro total é de: R$", acumuladorLucro, "\n")
    
    se(contGasolina > contAlcool e contGasolina > contDiesel){
      escreva("O combustivel mais utilizado foi: Gasolina!")
    }
     senao se(contAlcool > contGasolina e contAlcool > contDiesel){
      escreva("O combustivel mais utilizado foi: Alcool!")
    }
    senao se(contDiesel > contGasolina e contDiesel > contAlcool){
      escreva("O combustivel mais utilizado foi: Diesel!")
    }


    


  
    



  }
}
