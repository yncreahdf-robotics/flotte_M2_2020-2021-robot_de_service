// Auto-generated. Do not edit!

// (in-package heron.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ValueUnitFloat = require('./ValueUnitFloat.js');

//-----------------------------------------------------------

class USIRSensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gauche = null;
      this.droit = null;
    }
    else {
      if (initObj.hasOwnProperty('gauche')) {
        this.gauche = initObj.gauche
      }
      else {
        this.gauche = new Array(4).fill(new ValueUnitFloat());
      }
      if (initObj.hasOwnProperty('droit')) {
        this.droit = initObj.droit
      }
      else {
        this.droit = new Array(4).fill(new ValueUnitFloat());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type USIRSensors
    // Check that the constant length array field [gauche] has the right length
    if (obj.gauche.length !== 4) {
      throw new Error('Unable to serialize array field gauche - length must be 4')
    }
    // Serialize message field [gauche]
    obj.gauche.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [droit] has the right length
    if (obj.droit.length !== 4) {
      throw new Error('Unable to serialize array field droit - length must be 4')
    }
    // Serialize message field [droit]
    obj.droit.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type USIRSensors
    let len;
    let data = new USIRSensors(null);
    // Deserialize message field [gauche]
    len = 4;
    data.gauche = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.gauche[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [droit]
    len = 4;
    data.droit = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.droit[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.gauche.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    object.droit.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'heron/USIRSensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec3639fb43a99ba8f34b5269205642b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ValueUnitFloat[4] gauche
    ValueUnitFloat[4] droit
    
    ================================================================================
    MSG: heron/ValueUnitFloat
    float64 value
    string unit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new USIRSensors(null);
    if (msg.gauche !== undefined) {
      resolved.gauche = new Array(4)
      for (let i = 0; i < resolved.gauche.length; ++i) {
        if (msg.gauche.length > i) {
          resolved.gauche[i] = ValueUnitFloat.Resolve(msg.gauche[i]);
        }
        else {
          resolved.gauche[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.gauche = new Array(4).fill(new ValueUnitFloat())
    }

    if (msg.droit !== undefined) {
      resolved.droit = new Array(4)
      for (let i = 0; i < resolved.droit.length; ++i) {
        if (msg.droit.length > i) {
          resolved.droit[i] = ValueUnitFloat.Resolve(msg.droit[i]);
        }
        else {
          resolved.droit[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.droit = new Array(4).fill(new ValueUnitFloat())
    }

    return resolved;
    }
};

module.exports = USIRSensors;
