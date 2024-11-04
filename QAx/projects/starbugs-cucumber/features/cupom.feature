#language: pt

Funcionalidade: Uso de cupons no checkout

    como um usuário da starbugs, eu quero poder aplicar cupons de desconto na página de checkout
    para que eu possa obter reduções no preço de produtos, aumentando com a minha satisfação com a minha experiência de compra.

    
        Cenario: Aplicar Desconto de 20%

        Dado que iniciei a compra do item:
            | name   | Café com Leite |
            | price  | R$ 19,99        |
            |delivery| R$ 10,00       |
            | total  | R$ 29,99       |
    Quando aplico o seguinte cupom "MEUCAFE"
    Então o valor final da compra deve ser atualizado para "R$ 25,99"


        # Dado que estou na página de checkout
        #     E o item que está no meu carrinho é o café copm Leite no valor de R$ 19,99
        #     E que a taxa de entrega é de R$ 10,00
        #     E o valor total é de 29,99
        #     E tenho um cupom com 20% de desconto "MEUCAFE"
        #     Quando aplico esse cupom de desconto
        #     Então o desconto de 20% deve ser aplicado apenas no valor do café com leite
        #         E o valor final da compra deve ser atualizado para R$ 25,99

        Cenario: Cupom Expirado

          Dado que iniciei a compra do item:
            | name   | Café com Leite |
            | price  | R$ 19,99       |
            |delivery| R$ 10,00       |
            | total  | R$ 29,99       |

            Quando aplico o seguinte cupom "PROMO20"
            Então devo ver a notificação: "Cupom expirado!"
            E o valor final deve permanecer o mesmo

        #     Dado que estou na página de checkout
        #     E o item que está no meu carrinho é o café copm Leite no valor de R$ 19,99
        #     E que a taxa de entrega é de R$ 10,00
        #     E o valor total é de 29,99
        #     E tenho um cupom que está expirado 
        # Quando aplico esse cupom de desconto
        
            

        Cenario: Cupom Inválido

         Dado que iniciei a compra do item:
            | name   | Café com Leite |
            | price  | R$ 19,99       |
            |delivery| R$ 10,00       |
            | total  | R$ 29,99       |

            Quando aplico o seguinte cupom "PROMO100 "
            Então devo ver a notificação: "Cupom inválido!"
            E o valor final deve permanecer o mesmo

        # Dado que estou na página de checkout
        #     E o item que está no meu carrinho é o café copm Leite no valor de R$ 19,99
        #     E que a taxa de entrega é de R$ 10,00
        #     E o valor total é de 29,99
        #     E tenho um cupom com o código invalido 
        # Quando aplico esse cupom de desconto
        # Então deve ver a seguinte notificação 
        #     E o valor final deve permanecer o mesmo

        Esquema do Cenario: Tentativa de aplicar o desconto

         Quando aplico o seguinte cupom "<cupom> "
            Então devo ver a notificação: "<saida>"
            E o valor final deve permanecer o mesmo

            Exemplos:
            | cupom    | saida         |
            | PROMO20  | expirado      |
            | PROMO100 | cupom invalido|
