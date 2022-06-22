var rowNum = 4;
var columnNum = 4;
var score = 0;
var board = [[0, 2048, 0, 0],
             [0, 32, 0, 0],
             [0, 0, 64, 0],
             [0, 0, 0, 128]];
        
function updateTile(num, tile) {
    tile.classList.value = "";
    tile.innerText = "";
    tile.classList.add("tile");
    if (num >= 2) {
        tile.classList.add("t" + num);
        tile.innerText = num;
    }
} 

// initializing game
for (var i = 0; i < rowNum; i++) {
    for (var j = 0; j < columnNum; j++) {
        var num = board[i][j];
        var tile = document.createElement("div");
        tile.setAttribute('id', i.toString() + "-" + j.toString());

        updateTile(num, tile);

        document.getElementById("board").appendChild(tile);
    }
}

createTile();
createTile();

document.addEventListener("keyup", (event) => {
    if (event.code == "ArrowLeft") {
        slideLeft();
        createTile();
    } else if (event.code == "ArrowRight") {
        slideRight();
        createTile();
    } else if (event.code == "ArrowUp") {
        slideUp();
        createTile();
    } else if (event.code == "ArrowDown") {
        slideDown();
        createTile();
    } 
})

function removeZeros(row) {
    return row.filter(element => element != 0);
}

function slideLeft() {
    for (var i = 0; i < rowNum; i++) {
        var row = board[i];
        row = removeZeros(row);

        for (var j = 0; j < row.length - 1; j++) {
            if (row[j] == row[j + 1]) {
                row[j] *= 2;
                row[j + 1] = 0;
                score += row[j];
            }
        }

        row = removeZeros(row);

        for (var k = row.length; k < columnNum; k++) {
            row.push(0);
        }

        //update matrix
        board[i] = row;
    }

    //update html
    for (var m = 0; m < rowNum; m++) {
        for (var n = 0; n < columnNum; n++) {
            var oldTile = document.getElementById(m + "-" + n);
            updateTile(board[m][n], oldTile);
        }
    }
    document.getElementById("score").innerHTML = score;
}

function slideRight() {
    for (var i = 0; i < rowNum; i++) {
        var row = board[i];
        row = removeZeros(row);

        for (var j = 0; j < row.length - 1; j++) {
            if (row[row.length - 1 - j] == row[row.length - 2 - j]) {
                row[row.length - 1 - j] *= 2;
                row[row.length - 2 - j] = 0;
                score += row[row.length - 1 - j];
            }
        }

        row = removeZeros(row);

        for (var k = row.length; k < columnNum; k++) {
            row.unshift(0);
        }

        //update matrix
        board[i] = row;
    }

    //update html
    for (var m = 0; m < rowNum; m++) {
        for (var n = 0; n < columnNum; n++) {
            var oldTile = document.getElementById(m + "-" + n);
            updateTile(board[m][n], oldTile);
        }
    }
    document.getElementById("score").innerHTML = score;
}

function slideUp() {
    for (var i = 0; i < columnNum; i++) {
        var row = [board[0][i], board[1][i], board[2][i], board[3][i]];

        row = removeZeros(row);
        
        for (var k = 0; k < row.length - 1; k++) {
            if (row[k] == row[k + 1]) {
                row[k] *= 2;
                row[k + 1] = 0;
                score += row[k];
            }
        }

        row = removeZeros(row);

        for (var m = row.length; m < columnNum; m++) {
            row.push(0);
        }

        for (var n = 0; n < rowNum; n++) {
            board[n][i] = row[n];
        }
    }

    //update html
    for (var m = 0; m < rowNum; m++) {
        for (var n = 0; n < columnNum; n++) {
            var oldTile = document.getElementById(m + "-" + n);
            updateTile(board[m][n], oldTile);
        }
    }
    document.getElementById("score").innerHTML = score;
}

function slideDown() {
    for (var i = 0; i < columnNum; i++) {
        var row = [board[3][i], board[2][i], board[1][i], board[0][i]];

        row = removeZeros(row);
        
        for (var k = 0; k < row.length - 1; k++) {
            if (row[k] == row[k + 1]) {
                row[k] *= 2;
                row[k + 1] = 0;
                score += row[k];
            }
        }

        row = removeZeros(row);

        for (var m = row.length; m < columnNum; m++) {
            row.push(0);
        }

        for (var n = 0; n < rowNum; n++) {
            board[rowNum - 1 - n][i] = row[n];
        }
    }

    //update html
    for (var m = 0; m < rowNum; m++) {
        for (var n = 0; n < columnNum; n++) {
            var oldTile = document.getElementById(m + "-" + n);
            updateTile(board[m][n], oldTile);
        }
    }
    document.getElementById("score").innerHTML = score;
}

function createTile() {
    var hasEmptyTile = false;
    for (var m = 0; m < rowNum; m++) {
        for (var n = 0; n < columnNum; n++) {
            if (board[m][n] == 0) {
                hasEmptyTile = true;
            }
        }
    }

    if (!hasEmptyTile) {
        return;
    }

    var foundEmptyTile = false;
    while (!foundEmptyTile) {
        var row = Math.floor(Math.random() * rowNum);
        var column = Math.floor(Math.random() * columnNum);

        if (board[row][column] == 0) {
            var twoOrFour = Math.random();
            var tileNum = 2;
            if (twoOrFour > 0.9) {
                tileNum = 4;
            }
            board[row][column] = tileNum;

            var tile = document.getElementById(row + "-" + column);
            tile.classList.add("t" + tileNum);
            tile.innerText = tileNum;

            foundEmptyTile = true;
        }
    }

}