const swipl = require('swipl')
const fs = require('fs')

swipl.call('consult(base)')

const ret = swipl.call('ancetre3(X,Y).');
if (ret) {
    console.log(`${ret.X}`)
    console.log(`${ret.Y}`)
} else {
    console.log('Call failed.');
}
