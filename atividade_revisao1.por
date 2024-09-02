programa {
  funcao inicio() {
    
    real combustivel, litros, pagamento, lucro=0, pix=0, gas=0, eta=0, die=0

    escreva("===================- POSTO DE GASOLINA -====================")
    escreva("\n|                                                        |")
    escreva("\n| 1-GASOLINA(R$5,50); 2-ETANOL(R$4,50); 3-DIESEL(R$6,00) |")
    escreva("\n|                                                        |")
    escreva("\n| 1-CREDITO; 2-DEBITO; 3-PIX; 4-DINHEIRO                 |")
    escreva("\n=========================================================")

    escreva("\nTIPO DE COMBUSTIVEL: ")
    leia(combustivel)
    
    enquanto(combustivel!=0)
    {
      escreva("QUANTOS LITROS: ")
      leia(litros)

      se(combustivel==1)
      {
        escreva("R$", (litros*5.5), " FORMA DE PAGAMENTO: ")
        leia(pagamento)
        lucro=lucro+(5.5*litros)
        gas++
        
      }
      senao se(combustivel==2)
      {
        escreva("R$", (litros*4.5), " FORMA DE PAGAMENTO: ")
        leia(pagamento)
        lucro=lucro+(4.5*litros)
        eta++
      }
      senao se(combustivel==3)
      {
        escreva("R$", (litros*6), " FORMA DE PAGAMENTO: ")
        leia(pagamento)
        lucro=lucro+(6*litros)
        die++
      }

      se(pagamento==3)
      {
        pix++
      }

      escreva("\nTIPO DE COMBUSTIVEL: ")
      leia(combustivel)
    }

    se(gas>eta e gas>die)
    {
      escreva("\nCombustivel mais usado: Gasolina")
    }
    senao se(eta>gas e eta>die)
    {
      escreva("\nCombustivel mais usado: Etanol")
    }
    senao
    {
      escreva("\nCombustivel mais usado: Diesel")
    }

    escreva("\nTotal de lucro obtido: R$", lucro)
    escreva("\nTotal de pagamentos em PIX: ", pix)
  }
}
