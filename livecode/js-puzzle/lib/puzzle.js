// todo

//pegar célula por célula
const tdTag = document.querySelectorAll('td');

const playGame = (event) => {
    const td = event.currentTarget;
    const black = document.querySelector('.empty');
    if (canMove(td, black)) {
        move(td, black);
    }
}

const canMove = (td, black) => {
    const rowBlack = black.parentElement.rowIndex;
    const rowTd = td.parentElement.rowIndex;
    const colBlack = black.cellIndex;
    const colTd = td.cellIndex;

    return ((rowBlack === rowTd && (colBlack - colTd)**2 == 1) ||
    (colBlack === colTd && (rowBlack - rowTd)**2 == 1));
}

const move = (td, black) => {
    td.classList.add('empty');
    black.classList.remove('empty');
    black.innerText = td.innerText;
    td.innerText = '';
}

tdTag.forEach((td) => {
  td.addEventListener('click', playGame);
});


//escutar o evento click da célula

//verificar se podemos modificar a célula preta

//se a célula for adjacente a célula preta, poderemos modificar

//trocar a classe empty com a próxima célular, e resgatar o valor da célular anterior e atribuir para outra.

