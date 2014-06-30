problem104 = require('./problem104')
 

assert = require('assert');
assert.equal(false, problem104.allPanDigital("123"), "123 is not pandigital");
assert.equal(true, problem104.allPanDigital("132465879"));
                                         // "1-------91-------9" 
assert.equal(true, problem104.allPanDigital("132465879132465879"));
assert.equal(false, problem104.allPanDigital("1324658791324658793"));
assert.equal(true, problem104.allPanDigital("132465879536254768493758462524549825463784762651257732865871631230000132465879"));
assert.equal(true, problem104.allPanDigital("132465879132465789"));
assert.equal(false, problem104.allPanDigital("026413246587913246587900"));