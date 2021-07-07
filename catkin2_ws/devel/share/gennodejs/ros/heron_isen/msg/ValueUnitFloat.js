// Auto-generated. Do not edit!

// (in-package heron_isen.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ValueUnitFloat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.unit = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ValueUnitFloat
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ValueUnitFloat
    let len;
    let data = new ValueUnitFloat(null);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.unit.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'heron_isen/ValueUnitFloat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '803cb15f868348d3b538d02fa83781fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 value
    string unit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ValueUnitFloat(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    return resolved;
    }
};

module.exports = ValueUnitFloat;
