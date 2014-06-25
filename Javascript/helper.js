
exports.printResult = function(myAnswer, correctAnswer) {
	var assert = require('assert');
	assert.equal(myAnswer, correctAnswer); //"The answer is not correct");
	console.log("Congratulations! " + myAnswer + " is correct.");
}
	