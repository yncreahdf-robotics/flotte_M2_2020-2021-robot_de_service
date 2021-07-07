// Auto-generated. Do not edit!

// (in-package turtlebot_isen_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Charger = null;
      this.Battery = null;
    }
    else {
      if (initObj.hasOwnProperty('Charger')) {
        this.Charger = initObj.Charger
      }
      else {
        this.Charger = '';
      }
      if (initObj.hasOwnProperty('Battery')) {
        this.Battery = initObj.Battery
      }
      else {
        this.Battery = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryState
    // Serialize message field [Charger]
    bufferOffset = _serializer.string(obj.Charger, buffer, bufferOffset);
    // Serialize message field [Battery]
    bufferOffset = _serializer.float32(obj.Battery, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryState
    let len;
    let data = new BatteryState(null);
    // Deserialize message field [Charger]
    data.Charger = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Battery]
    data.Battery = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Charger.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlebot_isen_msgs/BatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7d9e281ba46539ec900610c49fadf3ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string Charger
    
    float32 Battery
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryState(null);
    if (msg.Charger !== undefined) {
      resolved.Charger = msg.Charger;
    }
    else {
      resolved.Charger = ''
    }

    if (msg.Battery !== undefined) {
      resolved.Battery = msg.Battery;
    }
    else {
      resolved.Battery = 0.0
    }

    return resolved;
    }
};

module.exports = BatteryState;
