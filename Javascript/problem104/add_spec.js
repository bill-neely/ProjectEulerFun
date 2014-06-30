problem104 = require('./problem104')
assert = require('assert');


assert.equal("4", problem104.add("2", "2"));
assert.equal("11", problem104.add("9", "2"));
assert.equal("31", problem104.add("19", "12")); 
assert.equal("101", problem104.add("99", "2"));
assert.equal("1998", problem104.add("999", "999"));