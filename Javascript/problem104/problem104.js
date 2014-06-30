


function calcFibs() {
	var fibs = ["1", "1"];
	var fibNum = 2;
	for(var i = 2; i > 0; i++) {
		if(i % 5000 == 0) console.log(i);
		fibNum = 3
		newFib = add(fibs[0], fibs[1])
		if (allPanDigital(newFib)) {
			console.log("The answer is: " + (i + 1))
			return;
		}
		fibs[0] = fibs[1];
		fibs[1] = newFib;
	}
}


var allPanDigital = function (number) {
	return panDigitial(number.toString().substring(0,9)) && panDigitial(number.toString().slice(-9));
}

function panDigitial(number) {
	if (number.toString().length != 9) 
		return false;
	for (var i = 1; i <= 9; i++) {
		if (number.toString().split('').indexOf(i.toString()) == -1)
			return false
	}
	return true
}


var add = function (string1, string2) {
	var longestString = (string1.length >= string2.length)? string1 : string2;
	var shortestString = (string1.length >= string2.length)? string2 : string1;
	var sum = Array(longestString.length + 1);
	while(shortestString.length != longestString.length) {
		shortestString = "0" + shortestString;
	}
	longestString = longestString.split("").reverse().map(function(e) {return Number(e)});
	shortestString = shortestString.split("").reverse().map(function(e) {return Number(e)});
	var carry = 0;
	for(var i = 0; i < longestString.length; i++) {
		if(longestString[i] + shortestString[i] + carry < 10) {
			sum[i] = longestString[i] + shortestString[i] + carry;
			carry = 0;
		}
		else if(longestString[i] + shortestString[i] + carry >= 10) {
			sum[i] = longestString[i] + shortestString[i] + carry - 10;
			carry = 1;
		}
	}
	if(carry == 1) {
		sum[sum.length - 1] = 1;
	}
	else {
		sum.pop();
	}
	return sum.reverse().join("");
}


calcFibs();