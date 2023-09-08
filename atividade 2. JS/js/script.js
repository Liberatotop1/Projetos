function calcularSoma() {
    const numero1 = parseInt(document.getElementById("numero1").value);
    const numero2 = parseInt(document.getElementById("numero2").value);

    const soma = numero1 + numero2;

    document.getElementById("valores").innerText = `${numero1} e ${numero2}`;
    document.getElementById("resultado").innerText = soma;

    
    enviarParaServidor(numero1, numero2, soma);
}

function enviarParaServidor(numero1, numero2, soma) {
   
    fetch('/calcular', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ numero1, numero2, soma }),
    })
        .then(response => response.json())
        .then(data => console.log(data))
        .catch(error => console.error('Erro ao enviar dados para o servidor:', error));
}
