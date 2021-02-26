// Auto-generated. Do not edit!

// (in-package coulomb_counter_cc75_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ValueUnitInt = require('./ValueUnitInt.js');
let ValueUnitFloat = require('./ValueUnitFloat.js');

//-----------------------------------------------------------

class Coulomb_counter_cc75 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.percentage = null;
      this.voltage = null;
      this.capacity = null;
      this.current = null;
      this.remaining_time = null;
      this.power = null;
    }
    else {
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = new ValueUnitInt();
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = new ValueUnitFloat();
      }
      if (initObj.hasOwnProperty('capacity')) {
        this.capacity = initObj.capacity
      }
      else {
        this.capacity = new ValueUnitFloat();
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new ValueUnitFloat();
      }
      if (initObj.hasOwnProperty('remaining_time')) {
        this.remaining_time = initObj.remaining_time
      }
      else {
        this.remaining_time = new ValueUnitInt();
      }
      if (initObj.hasOwnProperty('power')) {
        this.power = initObj.power
      }
      else {
        this.power = new ValueUnitFloat();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Coulomb_counter_cc75
    // Serialize message field [percentage]
    bufferOffset = ValueUnitInt.serialize(obj.percentage, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = ValueUnitFloat.serialize(obj.voltage, buffer, bufferOffset);
    // Serialize message field [capacity]
    bufferOffset = ValueUnitFloat.serialize(obj.capacity, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = ValueUnitFloat.serialize(obj.current, buffer, bufferOffset);
    // Serialize message field [remaining_time]
    bufferOffset = ValueUnitInt.serialize(obj.remaining_time, buffer, bufferOffset);
    // Serialize message field [power]
    bufferOffset = ValueUnitFloat.serialize(obj.power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Coulomb_counter_cc75
    let len;
    let data = new Coulomb_counter_cc75(null);
    // Deserialize message field [percentage]
    data.percentage = ValueUnitInt.deserialize(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = ValueUnitFloat.deserialize(buffer, bufferOffset);
    // Deserialize message field [capacity]
    data.capacity = ValueUnitFloat.deserialize(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = ValueUnitFloat.deserialize(buffer, bufferOffset);
    // Deserialize message field [remaining_time]
    data.remaining_time = ValueUnitInt.deserialize(buffer, bufferOffset);
    // Deserialize message field [power]
    data.power = ValueUnitFloat.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ValueUnitInt.getMessageSize(object.percentage);
    length += ValueUnitFloat.getMessageSize(object.voltage);
    length += ValueUnitFloat.getMessageSize(object.capacity);
    length += ValueUnitFloat.getMessageSize(object.current);
    length += ValueUnitInt.getMessageSize(object.remaining_time);
    length += ValueUnitFloat.getMessageSize(object.power);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'coulomb_counter_cc75_ros/Coulomb_counter_cc75';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1bb334f77b5f975a6c36fc77930ac52';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ValueUnitInt percentage
    ValueUnitFloat voltage
    ValueUnitFloat capacity
    ValueUnitFloat current
    ValueUnitInt remaining_time
    ValueUnitFloat power
    
    ================================================================================
    MSG: coulomb_counter_cc75_ros/ValueUnitInt
    uint64 value
    string unit
    
    ================================================================================
    MSG: coulomb_counter_cc75_ros/ValueUnitFloat
    float64 value
    string unit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Coulomb_counter_cc75(null);
    if (msg.percentage !== undefined) {
      resolved.percentage = ValueUnitInt.Resolve(msg.percentage)
    }
    else {
      resolved.percentage = new ValueUnitInt()
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = ValueUnitFloat.Resolve(msg.voltage)
    }
    else {
      resolved.voltage = new ValueUnitFloat()
    }

    if (msg.capacity !== undefined) {
      resolved.capacity = ValueUnitFloat.Resolve(msg.capacity)
    }
    else {
      resolved.capacity = new ValueUnitFloat()
    }

    if (msg.current !== undefined) {
      resolved.current = ValueUnitFloat.Resolve(msg.current)
    }
    else {
      resolved.current = new ValueUnitFloat()
    }

    if (msg.remaining_time !== undefined) {
      resolved.remaining_time = ValueUnitInt.Resolve(msg.remaining_time)
    }
    else {
      resolved.remaining_time = new ValueUnitInt()
    }

    if (msg.power !== undefined) {
      resolved.power = ValueUnitFloat.Resolve(msg.power)
    }
    else {
      resolved.power = new ValueUnitFloat()
    }

    return resolved;
    }
};

module.exports = Coulomb_counter_cc75;
