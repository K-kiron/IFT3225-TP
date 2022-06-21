var row = 4;
var column = 4;
var score = 0;
var board = [[0, 0, 0, 0],
             [0, 0, 0, 0],
             [0, 0, 0, 0],
             [0, 0, 0, 0]];
        
for (var i = 0; i < row; i++) {
    for (var j = 0; j < column; j++) {
        var num = board[i][j];
        var tile = document.createElement("div");
        tile.classList.add("tile");
        tile.setAttribute('id', i.toString() + "-" + j.toString());
        tile.id = i.toString() + "-" + j.toString();
        tile.innerText = num;
        document.getElementById("board").appendChild(tile);
    }
}

document.addEventListener("keyup", (event) => {
    if (event.code == "ArrowLeft") {
        
    } else if (event.code == "ArrowRight") {
        
    } else if (event.code == "ArrowUp") {

    } else if (event.code == "ArrowDown") {

    } 
})