#language: pt

Funcionalidade: Pedidos

    como um usúario do site starbugs, eu quero selecionar e comprar cafés
    para que eu possa receber os produtos em meu endereço e efetuat o pagamento na entrega

    @smoke
    Cenário: compra bem sucedida

        Dado que estou na página principal da starbugs
                E que iniciei a compra do item "Expresso Tradicional"
            Quando faço a busca do segunte CEP: "04534011"
                E informo os demais dados do endereço:
                    | number      | 1000   |
                    | details     | Apto 22|
                E escolho a forma de pagamento "Cartão de Débito"
                E por fim finalizo a compra
            Então sou redirecionado para a página de confirmação de Pedidos
                E deve ser informado o seguinte prazo e entrega: "20 min - 30 min"