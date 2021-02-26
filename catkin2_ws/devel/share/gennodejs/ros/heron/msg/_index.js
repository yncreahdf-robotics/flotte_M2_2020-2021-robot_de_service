
"use strict";

let IRSensors = require('./IRSensors.js');
let Motion = require('./Motion.js');
let ValueUnitInt = require('./ValueUnitInt.js');
let ValueUnitFloat = require('./ValueUnitFloat.js');
let Battery = require('./Battery.js');
let Encoders = require('./Encoders.js');
let winch = require('./winch.js');
let USIRSensors = require('./USIRSensors.js');

module.exports = {
  IRSensors: IRSensors,
  Motion: Motion,
  ValueUnitInt: ValueUnitInt,
  ValueUnitFloat: ValueUnitFloat,
  Battery: Battery,
  Encoders: Encoders,
  winch: winch,
  USIRSensors: USIRSensors,
};
