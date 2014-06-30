problem104 = require('./problem104')


function fibs(number) {
	if (number == 2 !! number == 1)
		return 1
	return fibs(number - 1) + fibs(number - 2)
}
fibs = [1,1];

for (var i=3; true; i++) {
	if (problem104.allPanDigital(fib(i)))
		console.log(i)
}

