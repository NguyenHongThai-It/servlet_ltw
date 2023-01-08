function checkPrice() {
    var x = document.getElementById('price').value;
    console.log(x);
    if (isNaN(x)) {
        document.getElementById('price').style.borderColor = "red";
        document.getElementById('price').style.color = "red";
    } else {
        document.getElementById('price').style.borderColor = "black";
        document.getElementById('price').style.color = "black";
    }
}

function checkImg() {
    var x = document.getElementById('img').value;
    if (isNaN(x)) {
        document.getElementById('img').style.borderColor = "red";
        document.getElementById('img').style.color = "red";
    } else {
        document.getElementById('img').style.borderColor = "black";
        document.getElementById('img').style.color = "black";
    }
}

function checkType() {
    var x = document.getElementById('type').value;
    if (isNaN(x)) {
        document.getElementById('type').style.borderColor = "red";
        document.getElementById('type').style.color = "red";
    } else {
        document.getElementById('type').style.borderColor = "black";
        document.getElementById('type').style.color = "black";
    }
}

function checkAmountSold() {
    var x = document.getElementById('amount_sold').value;
    if (isNaN(x)) {
        document.getElementById('amount_sold').style.borderColor = "red";
        document.getElementById('amount_sold').style.color = "red";
    } else {
        document.getElementById('amount_sold').style.borderColor = "black";
        document.getElementById('amount_sold').style.color = "black";
    }
}

function checkAmountRest() {
    var x = document.getElementById('amount_rest').value;
    if (isNaN(x)) {
        document.getElementById('amount_rest').style.borderColor = "red";
        document.getElementById('amount_rest').style.color = "red";
    } else {
        document.getElementById('amount_rest').style.borderColor = "black";
        document.getElementById('amount_rest').style.color = "black";
    }
}

function checkRate() {
    var x = document.getElementById('rate').value;
    if (isNaN(x)) {
        document.getElementById('rate').style.borderColor = "red";
        document.getElementById('rate').style.color = "red";
    } else {
        document.getElementById('rate').style.borderColor = "black";
        document.getElementById('rate').style.color = "black";
    }
}

function checkPriceDisc() {
    var x = document.getElementById('price_disc').value;
    if (isNaN(x)) {
        document.getElementById('price_disc').style.borderColor = "red";
        document.getElementById('price_disc').style.color = "red";
    } else {
        document.getElementById('price_disc').style.borderColor = "black";
        document.getElementById('price_disc').style.color = "black";
    }
}

function checkBestSell() {
    var x = document.getElementById('best_sell').value;
    if (isNaN(x)) {
        document.getElementById('best_sell').style.borderColor = "red";
        document.getElementById('best_sell').style.color = "red";
    } else {
        document.getElementById('best_sell').style.borderColor = "black";
        document.getElementById('best_sell').style.color = "black";
    }
}

function checkForm() {
    var x = document.getElementById('form').value;
    console.log(x);
    if (isNaN(x)) {
        document.getElementById('form').style.borderColor = "red";
        document.getElementById('form').style.color = "red";
    } else {
        document.getElementById('form').style.borderColor = "black";
        document.getElementById('form').style.color = "black";
    }
}